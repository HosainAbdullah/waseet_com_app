import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:waseet_com_app/const.dart';
import 'package:waseet_com_app/core/routes.dart';
import 'package:waseet_com_app/screens/registration_screen/model/registr_user.dart';
import 'package:waseet_com_app/screens/registration_screen/service/user_hive.dart';
import 'package:waseet_com_app/screens/registration_screen/service/user_service.dart';
import 'package:waseet_com_app/screens/registration_screen/widget/nameTextField.dart';
import 'package:waseet_com_app/screens/registration_screen/widget/number_buTextField.dart';
import 'package:waseet_com_app/screens/registration_screen/widget/passwordTextField.dart';
import 'package:waseet_com_app/screens/widgets/appbarwidgte.dart';
import 'package:waseet_com_app/screens/widgets/logoapp.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:path_provider/path_provider.dart' as syspaths;
import 'package:path/path.dart' as path;

class RegisterClient extends StatefulWidget {
  const RegisterClient({Key? key}) : super(key: key);

  @override
  _RegisterClientState createState() => _RegisterClientState();
}

class _RegisterClientState extends State<RegisterClient> {
  bool? isText;
  Future initBox() async {
    await Hive.openBox<UserModel>('userModel');
  }

  @override
  void initState() {
    super.initState();
    initBox();
    isText = true;
  }

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("الكريمي"), value: "k"),
      const DropdownMenuItem(child: Text("النجم"), value: "S"),
      const DropdownMenuItem(child: Text("التضامن"), value: "T"),
      const DropdownMenuItem(child: Text("الجزيره"), value: "G"),
    ];
    return menuItems;
  }

  final formKey = GlobalKey<FormState>();
  final nameControler = TextEditingController();
  final phoneControler = TextEditingController();
  final passwordControler = TextEditingController();
  String? bankNameControler;
  final numIpControler = TextEditingController();
  bool isCheck = false;
  File? _storedImage;
  String? newName;
  String? countryCode;
  // File? a;
  Future<void> getImage() async {
    try {
      final imageFile =
          await ImagePicker().pickImage(source: ImageSource.gallery);

      if (imageFile == null) {
        print('No Select Image');
      } else {
        isText = false;
        final appDir = await syspaths.getApplicationDocumentsDirectory();
        final fileName1 = path.basename(imageFile.name);
        final newPathAndName =
            path.join(appDir.path, 'ImagesName${fileName1.substring(29)}');
        newName = 'ImagesName${fileName1.substring(29)}';
        final oldPath = File.fromUri(Uri.parse(imageFile.path));
        _storedImage = await oldPath.copy(newPathAndName);
        setState(() {});
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, StringsApp.labalScreenClient, true),
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: iPaddingAllScreen),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const LogoApp(
                    imgHeght: 150,
                    imgWidth: 150,
                  ),
                  const SizedBox(
                    height: iMarginCard - 10,
                  ),
                  WidgetNameFormField(
                    controller: nameControler,
                    textLabel: 'الاسم',
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(
                    height: iMarginCard - 10,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Container(
                      padding: EdgeInsets.only(
                          right: iPaddingAllScreen,
                          left: iPaddingAllScreen - 10),
                      decoration: BoxDecoration(
                        color: iBackgroundTextFeild,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IntlPhoneField(
                        initialCountryCode: 'YE',
                        textAlign: TextAlign.right,
                        style: Theme.of(context).textTheme.bodyLarge,
                        controller: phoneControler,
                        dropdownTextStyle:
                            Theme.of(context).textTheme.bodyLarge,
                        dropdownDecoration: BoxDecoration(),
                        searchText: 'أختر الدوله',
                        decoration: InputDecoration(
                          hintText: 'رقم الجوال',
                          border: InputBorder.none,
                        ),
                        textInputAction: TextInputAction.next,
                        onChanged: (phone) {
                          countryCode = phone.countryCode;
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: iMarginCard - 10,
                  ),
                  WidgetPasswordFormField(
                    controller: passwordControler,
                    textLabel: 'كلمه المرور',
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(
                    height: iMarginCard - 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: iPaddingAllScreen - 10),
                    decoration: BoxDecoration(
                      color: iBackgroundTextFeild,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButtonFormField<String>(
                        style: Theme.of(context).textTheme.bodyLarge,
                        alignment: Alignment.center,
                        decoration: InputDecoration(
                          hintStyle: Theme.of(context).textTheme.bodyLarge,
                          border: InputBorder.none,
                        ),
                        hint: const Text('قم بأختيار البنك'),
                        validator: (value) =>
                            value == null ? "أختر البنك" : null,
                        dropdownColor: iBackgroundTextFeild,
                        // value: widget.selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            bankNameControler = newValue!;
                          });
                        },
                        items: dropdownItems),
                  ),
                  const SizedBox(
                    height: iMarginCard - 10,
                  ),
                  WidgetNemberFormField(
                    controller: numIpControler,
                    textLabel: 'رقم البيان',
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: iMarginCard - 10,
                  ),
                  Row(
                    children: [
                      Container(
                        // width: MediaQuery.of(context).size.width - 40,
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: iBackgroundTextFeild,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: IconButton(
                          onPressed: () {
                            getImage();
                          },
                          icon: const Icon(
                            Icons.camera_alt_outlined,
                            size: iIconsSize * 1.5,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        isText!
                            ? 'من فضلك قم بإرفاق صوره الهوية'
                            : newName ?? ' ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      isText!
                          ? Text('')
                          : Image.file(
                              _storedImage!,
                              width: 40,
                              height: 50,
                            ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheck,
                        onChanged: (value) {
                          setState(() {
                            isCheck = value!;
                          });
                        },
                      ),
                      Text(
                        StringsApp.termsandConditions,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        width: ipadding,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          StringsApp.termsandConditionsOK,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: iBackgroundButton),
                        ),
                      )
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(iButtonSize),
                      primary: iBackgroundButton,
                      onPrimary: iWhite,
                    ),
                    onPressed: () async {
                      // Navigator.of(context).pushNamed(AppRoutes.home.name!);
                      if (formKey.currentState!.validate()) {
                        if (_storedImage != null) {
                          if (isCheck) {
                            final phoneNumAndCoun =
                                "${countryCode}${phoneControler.text}";
                            String imgPathDataBase =
                                _storedImage!.path.toString();
                            final UserModel model = UserModel();
                            // model.userId = 1;
                            model.userName = nameControler.text;
                            model.phoneNumber = phoneNumAndCoun;
                            model.userPass = passwordControler.text;
                            model.bankName = bankNameControler;
                            model.numberIp = numIpControler.text;
                            model.imageIdentity = imgPathDataBase;
                            model.userType = 1;
                            DataApiDatabase().createData(model);
                            model.imgIdentityHive =
                                await _storedImage!.readAsBytes();
                            OpHiveUser().savaDataUser(model);
                            Navigator.pushNamed(context, AppRoutes.home.name!);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: iBackgroundButton,
                                duration: const Duration(seconds: 5),
                                content: Text(
                                  textAlign: TextAlign.center,
                                  'قم بالموافقه علي الشروط والاحكام ',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            );
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: iBackgroundButton,
                              duration: const Duration(seconds: 5),
                              content: Text(
                                textAlign: TextAlign.center,
                                'قم بأختيار صوره الهويه ',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          );
                        }
                      }
                    },
                    child: Text(
                      StringsApp.signUpButton,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: iWhite),
                    ),
                  ),
                  const SizedBox(
                    height: iMarginCard,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(StringsApp.haveAnAccount),
                      const SizedBox(
                        width: iMarginCard - 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(AppRoutes.login.name!);
                        },
                        child: Text(
                          StringsApp.logInNow,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: iBackgroundButton),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          // ],
        ),
        //  ),
        // ),
      ),
    );
  }
}
