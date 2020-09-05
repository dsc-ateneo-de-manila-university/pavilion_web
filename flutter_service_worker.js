'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/assets/images/applied_empty.png": "aa0f8a63d557b14b858174fc6c117625",
"assets/assets/images/logo.png": "31297b0d661cc6aad506ca70e5c10483",
"assets/assets/images/DSCL%2520logo.png": "7f4fb2e62f98fa082703622d08cdc611",
"assets/assets/images/maintenance.png": "c4416f458d9e8eb1d482b00857c43123",
"assets/assets/images/saved_empty.png": "68770bfa35d35392303e551c399b8d8c",
"assets/assets/images/placeholder.png": "64584c64b15f84453b2325e80eacda62",
"assets/assets/images/guest.png": "d3998a16a103106f1a3cf26e1906f23a",
"assets/assets/images/dscl_horizontal.png": "2e0d605e22633bc0c5f62b8999c131cb",
"assets/assets/flutter.png": "d21f1eecaeaab081ba7efec1721c0712",
"assets/assets/team/ceek.png": "1ebe24220c7692f33c7303369311a2b9",
"assets/assets/team/jeth.png": "46049947c693797cd1ea2ed880eb7c28",
"assets/assets/team/franz.png": "4ea016d6454a6ff31be57c1b46a823b1",
"assets/assets/team/auds.png": "2cebb97d4f38d5aad491f52c0b02447a",
"assets/assets/team/harvs.png": "194c0038e024c3cfeb3ed5c904580db5",
"assets/assets/team/polly.png": "ac152e7aa1268ec159604eb75469529e",
"assets/assets/bodies/sanggu/dea.png": "9533f0d3df3effdfc1eff0195bc99858",
"assets/assets/bodies/sanggu/soh.png": "6a7655faf79d23f2e5d9f70f5e3178f2",
"assets/assets/bodies/sanggu/doc.png": "f6f21c020851ec7710f2c1400b85e97e",
"assets/assets/bodies/sanggu/som.png": "2e4570e7044f1a381b53be5de3a96b9b",
"assets/assets/bodies/sanggu/cover.png": "90b78d1d8646a1a44a7f9ff854ac723b",
"assets/assets/bodies/sanggu/casmv.png": "79f5e7b439a4c9b967ef61b6b921af7f",
"assets/assets/bodies/sanggu/logo.png": "25ccedd17aa13909b38b43684201e4d9",
"assets/assets/bodies/sanggu/sose.png": "7c5a9891c1bfd82325abe3db717462a4",
"assets/assets/bodies/sanggu/caip.png": "18e3f479061daabf3062e782750d9ef0",
"assets/assets/bodies/sanggu/cge.png": "f1b251187eb4c41c0d017558c3017e26",
"assets/assets/bodies/sanggu/soss.png": "63c7ed797165189d770fcda5254f2783",
"assets/assets/bodies/sanggu/Internals.png": "597ff5927416ec089da32975cb248bf2",
"assets/assets/bodies/sanggu/LegalAffairs.png": "9b725a93b131dd57300a961d8f451d2b",
"assets/assets/bodies/sanggu/StratandDev.png": "d5ca236dcbdf20c8f8c583f27b14d1dd",
"assets/assets/bodies/sanggu/cpsni.png": "6c9d3748ad84a779175e03629fb738db",
"assets/assets/bodies/sanggu/cmh.png": "422e5d04fd2d34e578948c5dea6f1659",
"assets/assets/bodies/sanggu/dbm.png": "486d11cf11dadd81e0d5c62c6875d7fb",
"assets/assets/bodies/sanggu/daa.png": "cdd52db4638912d10002e36184949ba2",
"assets/assets/bodies/cop/logos.png": "53ad66323b253064ef2e89867e7b8e64",
"assets/assets/bodies/cop/bookmark.png": "33c357dc29114aa13de6ea665767c1a7",
"assets/assets/bodies/cop/bookmark_active.png": "7c8de3b953ee8cefb63622522aeee315",
"assets/assets/bodies/coa/intercultural-relations.png": "29eaa2b6c09720247ffd97c948512a82",
"assets/assets/bodies/coa/sector-based.png": "363fa0c4c3ec35e2fc48b1c477c95f8f",
"assets/assets/bodies/coa/business.png": "90e1fc121cad62493a9c4ae2aaa75411",
"assets/assets/bodies/coa/cover.png": "375fbab47c44f8adb8a2a4a871e07a5f",
"assets/assets/bodies/coa/logo.png": "a9c38a625e223a6fb21f9398306af545",
"assets/assets/bodies/coa/science-technology.png": "be17254bdaf47b654ed7da6504b7a551",
"assets/assets/bodies/coa/ig.png": "836dbe3cc3a6ecb14cd0357fa4f0e0ea",
"assets/assets/bodies/coa/website.png": "e58b445f4c732cde3d948ffac3e80437",
"assets/assets/bodies/coa/bookmark.png": "bcc1a9c7fd3f994185e0202fdf387521",
"assets/assets/bodies/coa/faith-formation.png": "4b86f32ad03f33a57f818448023866f3",
"assets/assets/bodies/coa/fb.png": "a32d92893250d81508b7f43a54df0aa7",
"assets/assets/bodies/coa/analysis-discourse.png": "8a82c7f1c729a676c124b68b7b46bed9",
"assets/assets/bodies/coa/performing-arts.png": "1fff544b3b0fffae454fa6af8b21150e",
"assets/assets/bodies/coa/health-environment.png": "f00721a9ec7585c03c7c37f92899dd7b",
"assets/assets/bodies/coa/bookmark_active.png": "053cc3286e22cf297b0f8f883cfba912",
"assets/assets/bodies/coa/twit.png": "2863843a4bf9161920d624aa6d0068a3",
"assets/assets/bodies/coa/media-arts.png": "8a86ef3ff210b6ea576d0c18b5007e10",
"assets/assets/bodies/lions/arts.png": "cb33f854175a9090d483c82686a3c3d2",
"assets/assets/bodies/lions/education.png": "32506014cde4063c2f8dfc396ef4321e",
"assets/assets/bodies/lions/language.png": "6c828ec45d807d472292de4f5746749d",
"assets/assets/bodies/lions/music.png": "054563be573750ce7a5ed4d9e7c6ad06",
"assets/assets/bodies/lions/circle.png": "c09a136b6179bc9e78a62bdba30349a8",
"assets/assets/bodies/lions/community.png": "d7d1e5baa73e5cc1ea778e4211668d0a",
"assets/assets/bodies/lions/business.png": "2e37adb83b4668f47188bf6262035181",
"assets/assets/bodies/lions/logo.png": "a496f43150b4e3d99a93c060af9977b1",
"assets/assets/bodies/lions/lifestyle.png": "82af3925fb526a445fc080574be3497b",
"assets/assets/bodies/lions/ig.png": "f9d62388c3e3734599dc1b1a8a83968f",
"assets/assets/bodies/lions/literature.png": "10d44743af2569b365d0761d38899aa7",
"assets/assets/bodies/lions/website.png": "10463bdf051af8c9516db7d2997fc3ab",
"assets/assets/bodies/lions/bookmark.png": "a29b88074ab5bace7e7c71c3c3d48224",
"assets/assets/bodies/lions/design.png": "973b5b114e643b9f6206fb41e6407891",
"assets/assets/bodies/lions/fb.png": "91da6f540f91ebbb7de17cac162bad0a",
"assets/assets/bodies/lions/home-org.png": "cdaefade33fc19e362ee8bb890f9b3d6",
"assets/assets/bodies/lions/spiritual.png": "ca84e9b1d3ecd221f7ca09368dec135e",
"assets/assets/bodies/lions/technology.png": "dfb6b768033d6fbe8b9cc608cffee0e1",
"assets/assets/bodies/lions/culture.png": "6842bb085c68b9574a2e21846a3b1a18",
"assets/assets/bodies/lions/international.png": "158dfb50e54337095fe4e0e53a20eee7",
"assets/assets/bodies/lions/bookmark_active.png": "7323a280d1490d1e3c4977dddc4a186a",
"assets/assets/bodies/lions/twit.png": "fef49766a955213c6cda5e8e3081f799",
"assets/assets/bodies/lions/environment.png": "7f3cde876c0eddcf48e31f24a2f9c006",
"assets/assets/bodies/lions/adventure.png": "3bc3bd004db1c55eb541c761f2183516",
"assets/assets/bodies/student-groups/logos.png": "cabf4866108c9e3a9e3a6f34482a95b0",
"assets/assets/bodies/student-groups/bookmark.png": "33c357dc29114aa13de6ea665767c1a7",
"assets/assets/bodies/student-groups/bookmark_active.png": "257a79d559f4aea26dfc221451c16cf5",
"assets/assets/icons/list_active.png": "8c83745bac25d79f3ca70191d9763936",
"assets/assets/icons/list.png": "4c605691deacc1806a6e7a43b8af3669",
"assets/assets/icons/alphabetical.png": "d87f3dc55a939cf854164277bc48700f",
"assets/assets/icons/org_bookmark_active.png": "2c42f2a8be1c9971caf5e2431027923f",
"assets/assets/icons/delete.png": "4943be4185668c7ae7f9a82736b8c3c6",
"assets/assets/icons/applied.png": "eef26d6b17b24aba418b32977dd732f6",
"assets/assets/icons/twitter.png": "8ff19bcaebf05251b0787ec4d0ac3024",
"assets/assets/icons/web.png": "e8db39637b956e1db21e46c64570e21c",
"assets/assets/icons/home_active.png": "9dc6c5a3d91b399004574c622455cab1",
"assets/assets/icons/websiteSanggu.png": "ae6d7a1c2b7945333c0ecc52bce50786",
"assets/assets/icons/tracker.png": "19e84636fecf0be0f7658425c3238922",
"assets/assets/icons/ig.png": "0941e3fca70afbc81d30b9f9fab0b6ab",
"assets/assets/icons/home.png": "ea55a4eeb9846c300fcccdbe6b535c76",
"assets/assets/icons/fbSanggu.png": "8a1cc555771474618b5a7fd64eb88c40",
"assets/assets/icons/settings.png": "eeb85b2d0801c8aaf6f348d6e205c9d8",
"assets/assets/icons/fb.png": "dc35e56ff2eb3b734340c63f03502692",
"assets/assets/icons/categories.png": "336136e2108c093592f08f082e952d82",
"assets/assets/icons/twitSanggu.png": "732659af5287dc18e72a99e799c17c8b",
"assets/assets/icons/org_bookmark.png": "538054a3efd5dfaa649190d7c4d91299",
"assets/assets/icons/org-bodies.png": "56f4236225c2ac94490e073ba5e406b6",
"assets/assets/icons/list_bookmark.png": "d816cf60fd9f92275fb57db5b4917793",
"assets/assets/icons/tracker_active.png": "bfba3d0eef4b75f23c12357a2c6432fd",
"assets/assets/icons/saved.png": "ebac04654ad796d9e5e2530a815a7558",
"assets/assets/icons/settings_active.png": "94f1f1b2fd30fe96a8760fc17c775944",
"assets/assets/icons/search.png": "a3284f003a3060e5518e1fc7f07083c6",
"assets/assets/icons/check.png": "e4e2f2dfc0284963c077b0c140621ef4",
"assets/assets/orgs/coa/COP/guidon_logo.png": "4f577f21ff6e99d765c509dac6b791ce",
"assets/assets/orgs/coa/COP/matanglawin_cover.png": "87d1a05b40c9a64928c1242828d27aa2",
"assets/assets/orgs/coa/COP/heights_cover.JPG": "d318e759fc3be446199bab0f4f9b2cd5",
"assets/assets/orgs/coa/COP/guidon_cover.jpg": "d63bc392e7aeab692fe4bd89d0727b46",
"assets/assets/orgs/coa/COP/matanglawin_logo.png": "b17ad5264254e9a0f4c0c958dd854c54",
"assets/assets/orgs/coa/COP/heights_logo.jpg": "b195440d04d1ae05496c786c606f69d6",
"assets/assets/orgs/coa/STUDENT_GROUPS/comelec_cover.jpg": "6fa80ea9d32af93ae5abe1d2435bff0f",
"assets/assets/orgs/coa/STUDENT_GROUPS/dsws_logo.png": "2e3a1f67bfbd4d3f702d5ed840fabe1e",
"assets/assets/orgs/coa/STUDENT_GROUPS/ombudsman_cover.jpg": "382c1d19bd3c0efbd031cc1f98c9226e",
"assets/assets/orgs/coa/STUDENT_GROUPS/sanggu_cover.png": "577e8b4eb77d134d6c5beceea7de0bc1",
"assets/assets/orgs/coa/STUDENT_GROUPS/lsopcs_cover.jpg": "71a938eb43f2bc450f3a7c7902f45c2a",
"assets/assets/orgs/coa/STUDENT_GROUPS/lsopcs_logo.png": "0a2f12969845c374e798decd399714cb",
"assets/assets/orgs/coa/STUDENT_GROUPS/aegis_cover.JPG": "d2aa7444b63bb70d1599ed9c2bdd8b7e",
"assets/assets/orgs/coa/STUDENT_GROUPS/sanggu_logo.png": "88c52d54974b35b1013cd6e860eaec59",
"assets/assets/orgs/coa/STUDENT_GROUPS/dsws_cover.JPG": "23e50bc31f6f78777b329c10525ca6fa",
"assets/assets/orgs/coa/STUDENT_GROUPS/aegis_logo.png": "dd64fa2bc78c3341d38a0d2d737e69df",
"assets/assets/orgs/coa/STUDENT_GROUPS/comelec_logo.png": "bcc45886bfc9c88a6e654557eb4ab658",
"assets/assets/orgs/coa/STUDENT_GROUPS/ombudsman_logo.png": "cf4ecb3f150c2c84ea0e8aac1518bd5f",
"assets/assets/orgs/coa/STUDENT_GROUPS/sjc_cover.jpeg": "088eb26e2d79e828e94a0827b8002c9c",
"assets/assets/orgs/coa/STUDENT_GROUPS/sjc_logo.png": "b54b3a09fefc533f667eebe59c691bde",
"assets/assets/orgs/coa/FAITH_FORMATION/yfc_cover.jpg": "9d749113e630f337e7d8a9514031a43b",
"assets/assets/orgs/coa/FAITH_FORMATION/atsca_cover.jpg": "b6f078f419ef1015cb89eec0205581cb",
"assets/assets/orgs/coa/FAITH_FORMATION/aclc_logo.png": "67ed405fbb840b295542996653df45f2",
"assets/assets/orgs/coa/FAITH_FORMATION/atsca_logo.png": "90662152e31d1ac3fd78685239f3bf01",
"assets/assets/orgs/coa/FAITH_FORMATION/acil_logo.png": "c1d984c99ccf83f5e5915872cbf1c693",
"assets/assets/orgs/coa/FAITH_FORMATION/acmg_logo.png": "84c517f707f49b6034ad2ac2386306f0",
"assets/assets/orgs/coa/FAITH_FORMATION/aclc_cover.jpg": "11b1bb0358c0d09b7a113042213736b3",
"assets/assets/orgs/coa/FAITH_FORMATION/acil_cover.png": "971400a858f47eba5d651fd96b18c236",
"assets/assets/orgs/coa/FAITH_FORMATION/yfc_logo.png": "2a9f602c1b8ded4cf56def98b6579bc8",
"assets/assets/orgs/coa/FAITH_FORMATION/acmg_cover.jpg": "67ad469b3f1b64c911e0b7bc24d79899",
"assets/assets/orgs/coa/INTERCULTURAL_RELATIONS/alac_cover.jpg": "e7aaeadc233c3150b8e6bbec26d6c2a0",
"assets/assets/orgs/coa/INTERCULTURAL_RELATIONS/baybayin_cover.jpg": "b574e1014c93e569c36d3dca64547b30",
"assets/assets/orgs/coa/INTERCULTURAL_RELATIONS/asec_cover.png": "527408d91db8dac2e4632c8d69ed6803",
"assets/assets/orgs/coa/INTERCULTURAL_RELATIONS/hinomoto_logo.png": "8c584caabe9bbdda74c9d235e972175d",
"assets/assets/orgs/coa/INTERCULTURAL_RELATIONS/asec_logo.png": "3491194a0498e198dae03c89c6280567",
"assets/assets/orgs/coa/INTERCULTURAL_RELATIONS/alac_logo.png": "70fc18ef5d56019ca7d8eb0de8c1c68c",
"assets/assets/orgs/coa/INTERCULTURAL_RELATIONS/hinomoto_cover.jpg": "e72231916e1385e470353d44b47a529e",
"assets/assets/orgs/coa/INTERCULTURAL_RELATIONS/baybayin_logo.png": "a8f7163e7901320adb83a3375af1739b",
"assets/assets/orgs/coa/INTERCULTURAL_RELATIONS/celadon_cover.JPG": "04514c767f16c0a23f4359259375ca4b",
"assets/assets/orgs/coa/INTERCULTURAL_RELATIONS/celadon_logo.png": "f4ae6e6a783484e060890abc937d883e",
"assets/assets/orgs/coa/ANALYSIS_AND_DISCOURSE/ads_cover.JPG": "241a9a07826556d8bacd5130f5049db5",
"assets/assets/orgs/coa/ANALYSIS_AND_DISCOURSE/apair_cover.JPG": "5d4ce1408daf09e78efd9b5a889ed4fe",
"assets/assets/orgs/coa/ANALYSIS_AND_DISCOURSE/entablado_cover.jpg": "8354a298eb2d165b8da32d4f638d1f22",
"assets/assets/orgs/coa/ANALYSIS_AND_DISCOURSE/assembly_cover.jpg": "f8319e022cb6faca0d81846f7634e86b",
"assets/assets/orgs/coa/ANALYSIS_AND_DISCOURSE/devsoc_cover.jpg": "56794fb38376d40fb99ea534c0620d19",
"assets/assets/orgs/coa/ANALYSIS_AND_DISCOURSE/apair_logo.png": "a457ba54429347bb7142f399b3db7bac",
"assets/assets/orgs/coa/ANALYSIS_AND_DISCOURSE/assembly_logo.png": "56e1f8486ce5ff6a42c5ce040b6150f3",
"assets/assets/orgs/coa/ANALYSIS_AND_DISCOURSE/aea_logo.png": "19f709c0f58ee5890e2dfd20116e2a32",
"assets/assets/orgs/coa/ANALYSIS_AND_DISCOURSE/aeuss_logo.png": "9cef597e90b34791ba3c7f7c5df45bba",
"assets/assets/orgs/coa/ANALYSIS_AND_DISCOURSE/aea_cover.png": "b846871b45e9874c02e6bf496a1eb563",
"assets/assets/orgs/coa/ANALYSIS_AND_DISCOURSE/astat_logo.png": "ae1ba17252ce454f8791b0b83e581628",
"assets/assets/orgs/coa/ANALYSIS_AND_DISCOURSE/aeuss_cover.png": "5a67220040a7d52f17afbb9981cf0ede",
"assets/assets/orgs/coa/ANALYSIS_AND_DISCOURSE/astat_cover.png": "1728075ea31eaffd17a8fd29075b99d8",
"assets/assets/orgs/coa/ANALYSIS_AND_DISCOURSE/ads_logo.png": "e76e217eda2f5216da334d87fde2d65b",
"assets/assets/orgs/coa/ANALYSIS_AND_DISCOURSE/entablado_logo.png": "6f0935810aff5b6e5748b143e6b595aa",
"assets/assets/orgs/coa/ANALYSIS_AND_DISCOURSE/devsoc_logo.png": "042b047d3cb351a99d2fb9ba58369ef1",
"assets/assets/orgs/coa/SECTOR-BASED/edge_cover.jpg": "c921d9a09f6701138860599267c9f571",
"assets/assets/orgs/coa/SECTOR-BASED/musmos_cover.jpg": "7444e174762bfb3c1363e08e212b4486",
"assets/assets/orgs/coa/SECTOR-BASED/tugon_cover.jpg": "8a7a524844be53943ba3d0d1db529d2f",
"assets/assets/orgs/coa/SECTOR-BASED/kythe_logo.png": "20a394b11cad279f61c3de721b8a0c50",
"assets/assets/orgs/coa/SECTOR-BASED/kythe_cover.jpg": "ec7641c25157cb887ce7dde005ebb2d9",
"assets/assets/orgs/coa/SECTOR-BASED/barefoot_cover.jpg": "0188801dbd9067682d8933e5abf5e1f0",
"assets/assets/orgs/coa/SECTOR-BASED/speed_logo.png": "1bdfe51758386eb9f404c928452b0ba0",
"assets/assets/orgs/coa/SECTOR-BASED/code_cover.png": "f30083acd242338b17185a42364693e7",
"assets/assets/orgs/coa/SECTOR-BASED/speed_cover.jpg": "caa5c30c6ddf04908cc5b418226f62e4",
"assets/assets/orgs/coa/SECTOR-BASED/code_logo.png": "7d17ba5d233a95eaa2a7a9915bd0767d",
"assets/assets/orgs/coa/SECTOR-BASED/barefoot_logo.png": "00337b9b1a0395627f2b96aa697982fe",
"assets/assets/orgs/coa/SECTOR-BASED/gabay_cover.jpg": "94e53cba96ffe9460b78a8ef5cc5249a",
"assets/assets/orgs/coa/SECTOR-BASED/gabay_logo.png": "dd9697d10b576b22c30988af40ebdf73",
"assets/assets/orgs/coa/SECTOR-BASED/tugon_logo.png": "f2a6c5a02ffe4a4a92f1b5e51db2da8c",
"assets/assets/orgs/coa/SECTOR-BASED/edge_logo.png": "a36ccfb89be2d3351c745a556c66f6ab",
"assets/assets/orgs/coa/SECTOR-BASED/musmos_logo.png": "b00080546fa1541282dd1f8815d31ad0",
"assets/assets/orgs/coa/SCIENCE_AND_TECH/box_cover.png": "31c6ab78da664034991e32a28f55e7df",
"assets/assets/orgs/coa/SCIENCE_AND_TECH/aches_logo.png": "66efeea23827f4968713baa8d0cae8a5",
"assets/assets/orgs/coa/SCIENCE_AND_TECH/leaps_cover.jpg": "05f6ad6540a4c33381d13a7fb3116e40",
"assets/assets/orgs/coa/SCIENCE_AND_TECH/compsat_logo.png": "75848723eb6d951511b0008b6534a432",
"assets/assets/orgs/coa/SCIENCE_AND_TECH/psyche_logo.png": "d411ae5c33a64d36d5ccc6ae87bef9e3",
"assets/assets/orgs/coa/SCIENCE_AND_TECH/leaps_logo.png": "a00e35d2e039984ed8ce682777ba22d4",
"assets/assets/orgs/coa/SCIENCE_AND_TECH/misa_logo.png": "3b6a16f8ce7a1965a77a4918f26694a7",
"assets/assets/orgs/coa/SCIENCE_AND_TECH/psyche_cover.jpg": "ff47e11d1d9beeea94ed7d68e207584c",
"assets/assets/orgs/coa/SCIENCE_AND_TECH/aeces_cover.png": "51fbf1075c7f77e21401796d3b0dcec2",
"assets/assets/orgs/coa/SCIENCE_AND_TECH/box_logo.png": "0fcfa118e0161d4b5d217e78d3c8f94c",
"assets/assets/orgs/coa/SCIENCE_AND_TECH/ams_cover.png": "3a56052f26f2849f9b114b2a0995059c",
"assets/assets/orgs/coa/SCIENCE_AND_TECH/ams_logo.png": "93522f92c96dfd87f2b99c5b9fbe2fe1",
"assets/assets/orgs/coa/SCIENCE_AND_TECH/misa_cover.png": "01df0c59439214e128ed72797236664d",
"assets/assets/orgs/coa/SCIENCE_AND_TECH/compsat_cover.png": "e01264d0f9a1d1aaf57cb2de24311714",
"assets/assets/orgs/coa/SCIENCE_AND_TECH/aches_cover.png": "740164416387c55e43cd29e3275720f4",
"assets/assets/orgs/coa/SCIENCE_AND_TECH/aeces_logo.png": "4e1f0cc6db4e82c5d0f9c2610064cd44",
"assets/assets/orgs/coa/BUSINESS_CLUSTER/ajma_cover.jpg": "d70cab6e7c89264c7caed82b411f2de9",
"assets/assets/orgs/coa/BUSINESS_CLUSTER/mea_logo.png": "a4d9bc6e782aa957f1dc6034f021f278",
"assets/assets/orgs/coa/BUSINESS_CLUSTER/actm_logo.png": "b0d351ba8292b5978282caebf195d2b4",
"assets/assets/orgs/coa/BUSINESS_CLUSTER/bcg_cover.jpg": "1a308cde91d03ec93579cb632c932a0f",
"assets/assets/orgs/coa/BUSINESS_CLUSTER/meco_logo.png": "ed12d84d3f6bbf7d843f280226c01fd4",
"assets/assets/orgs/coa/BUSINESS_CLUSTER/aiesec_logo.png": "bbc6c4a03ee81942053ef409c9ce58b3",
"assets/assets/orgs/coa/BUSINESS_CLUSTER/lex_logo.png": "d25e09a93130a545a10beae21e16e249",
"assets/assets/orgs/coa/BUSINESS_CLUSTER/actm_cover.jpg": "8807d6bc589af9abe84b3362354ec8d9",
"assets/assets/orgs/coa/BUSINESS_CLUSTER/mea_cover.png": "d0c8899aa686cfa8006c8c9ef00f9a6c",
"assets/assets/orgs/coa/BUSINESS_CLUSTER/ajma_logo.png": "6be116832643b5d9eea589fc2dd0ad02",
"assets/assets/orgs/coa/BUSINESS_CLUSTER/maca_logo.png": "8aa0c3aaefc9752e28a16cdb44275f45",
"assets/assets/orgs/coa/BUSINESS_CLUSTER/meco_cover.jpg": "e0739b492c0540ee0181574e1dbec72a",
"assets/assets/orgs/coa/BUSINESS_CLUSTER/lex_cover.jpg": "cea02d6cde304bfb902292eb1ed9b5c0",
"assets/assets/orgs/coa/BUSINESS_CLUSTER/ama_cover.jpg": "c9f21ce061a3a9547b7c76016fab09f3",
"assets/assets/orgs/coa/BUSINESS_CLUSTER/bcg_logo.png": "1d694d7c1e045bd14bdb52dc4c251b8f",
"assets/assets/orgs/coa/BUSINESS_CLUSTER/aiesec_cover.JPG": "4f6dec5f68e6d4b048c0159a6c476c0d",
"assets/assets/orgs/coa/BUSINESS_CLUSTER/ama_logo.png": "e2b83e8738036aff76209b316e05377b",
"assets/assets/orgs/coa/BUSINESS_CLUSTER/maca_cover.jpg": "b4b968d05a8da1c9a8d1b31239cd0380",
"assets/assets/orgs/coa/HEALTH_AND_ENVIRONMENT/aess_logo.png": "af9d92ea691b11c72dd644700f0053b7",
"assets/assets/orgs/coa/HEALTH_AND_ENVIRONMENT/isda_cover.jpg": "7cc5568bc9495979fb0bee8f2198d4e3",
"assets/assets/orgs/coa/HEALTH_AND_ENVIRONMENT/peers_logo.png": "7a8d0377765b59f8d83012bc644a9f3d",
"assets/assets/orgs/coa/HEALTH_AND_ENVIRONMENT/pmsa_logo.png": "718bea911542070b06880247e138a571",
"assets/assets/orgs/coa/HEALTH_AND_ENVIRONMENT/lm_logo.png": "383616200a128463f731c08f6899a6d0",
"assets/assets/orgs/coa/HEALTH_AND_ENVIRONMENT/aess_cover.jpg": "faaa032be5ac1205e17284595d734381",
"assets/assets/orgs/coa/HEALTH_AND_ENVIRONMENT/isda_logo.png": "329af1975c7d6ee9402d1ae652a829be",
"assets/assets/orgs/coa/HEALTH_AND_ENVIRONMENT/lm_cover.JPG": "89312f06a137f4b83e34e812b581fd97",
"assets/assets/orgs/coa/HEALTH_AND_ENVIRONMENT/pmsa_cover.JPG": "554ad1ca8f012129d1472bec455fa0f5",
"assets/assets/orgs/coa/HEALTH_AND_ENVIRONMENT/peers_cover.jpg": "a0c6925658fb3aee81d3e8f09b6ffc1b",
"assets/assets/orgs/coa/MEDIA_AND_CREATIVES_CLUSTER/lfc_cover.png": "c6186d03a53fbe5540aa32def45aac9e",
"assets/assets/orgs/coa/MEDIA_AND_CREATIVES_CLUSTER/acomm_logo.png": "c71c3ce17c3b4b51ec4b7dc3124bb93b",
"assets/assets/orgs/coa/MEDIA_AND_CREATIVES_CLUSTER/amp_cover.jpg": "e4da605e96d8318004da327375bd4fec",
"assets/assets/orgs/coa/MEDIA_AND_CREATIVES_CLUSTER/cosa_cover.JPG": "2df8da9084bb734d077f18f12f960b44",
"assets/assets/orgs/coa/MEDIA_AND_CREATIVES_CLUSTER/cosa_logo.png": "13bfc4a59587559ccfab1a95d58563f9",
"assets/assets/orgs/coa/MEDIA_AND_CREATIVES_CLUSTER/lfc_logo.png": "a3a78942af4bf671874de5120af130e4",
"assets/assets/orgs/coa/MEDIA_AND_CREATIVES_CLUSTER/acomm_cover.jpg": "22eb92f4a16fb3cbe6a19e9defa9d985",
"assets/assets/orgs/coa/MEDIA_AND_CREATIVES_CLUSTER/amp_logo.png": "30219fd2c54214f11a34d09a25273783",
"assets/assets/orgs/coa/PERFORMING_ARTS_CLUSTER/bluerep_cover.png": "0b97ee849a7d7cd96d77ac8717dcf8b6",
"assets/assets/orgs/coa/PERFORMING_ARTS_CLUSTER/acgc_cover.png": "45f2fc11900cc97d4498d8bf25ed1c0a",
"assets/assets/orgs/coa/PERFORMING_ARTS_CLUSTER/cads_cover.png": "16c0b9266cfd53cbece4e328c65cf93e",
"assets/assets/orgs/coa/PERFORMING_ARTS_CLUSTER/bluerep_logo.png": "a74fea5960af26d5eefc66b0cf7235a4",
"assets/assets/orgs/coa/PERFORMING_ARTS_CLUSTER/acgc_logo.png": "6e1244b6e04878a14de7f3ed511e616e",
"assets/assets/orgs/coa/PERFORMING_ARTS_CLUSTER/ta_logo.png": "f00c4f14e224cb0a5393d6ac898bbf21",
"assets/assets/orgs/coa/PERFORMING_ARTS_CLUSTER/cads_logo.png": "cfb9baede4a00c75bb25719fba30c7ca",
"assets/assets/orgs/coa/PERFORMING_ARTS_CLUSTER/ta_cover.png": "dd945afc67a844de89fb057a7d266040",
"assets/assets/orgs/lions/covers/LGL.jpeg": "84db6e6c21cf2051de0ed09af4fc305f",
"assets/assets/orgs/lions/covers/THINC.jpg": "739ef3fe21ba829bbea18970c3d04b11",
"assets/assets/orgs/lions/covers/byte.JPG": "21b662b2f80c7e37286629a71bc19bd5",
"assets/assets/orgs/lions/covers/CASA.jpg": "bdc5a7d36411efb0107ee271b0f24510",
"assets/assets/orgs/lions/covers/WS.jpeg": "25e2e5b417d74e7cfa73bee743eb9127",
"assets/assets/orgs/lions/covers/UXS.jpg": "71cd902448cacb2eacb0311f4ad2b8af",
"assets/assets/orgs/lions/covers/AGILA.png": "829545d83254af0562ca3df81069aa02",
"assets/assets/orgs/lions/covers/ProjKabuhayan.jpg": "ba54a31eb37991ca6a53b9b29ddf15e2",
"assets/assets/orgs/lions/covers/MOKOA.png": "524e17c56f0d0092237273c4f3ce8611",
"assets/assets/orgs/lions/covers/BlueHanguk.jpg": "746258e7f6d11dadcbf56e5a360fff6f",
"assets/assets/orgs/lions/covers/CYA.JPG": "2b73c79ec02f279861be2370cc312a2d",
"assets/assets/orgs/lions/covers/EffectiveAltruism.jpg": "9d4dd6f35a5ed5f9d28113e1631fe06b",
"assets/assets/orgs/lions/covers/RCLIFE.jpg": "137ad253d8ff50fd13253501f87a3d33",
"assets/assets/orgs/lions/covers/BLINK.jpg": "5deb78acbf137f51a819a1a008a73805",
"assets/assets/orgs/lions/covers/LAHI.jpg": "10230a87533620b17173e3f9037a1399",
"assets/assets/orgs/lions/covers/ACE.jpg": "5a179e9c785108d6eabe32bebea9280c",
"assets/assets/orgs/lions/covers/HFH.jpg": "c76c5fa2b4310f2a1e9dc0f45c8e39e2",
"assets/assets/orgs/lions/covers/DSC.jpg": "714b659988067f40c4744e544345770d",
"assets/assets/orgs/lions/covers/_0100%2520wacky%2520-%2520John%2520Andrew%2520Chua.JPG": "a92be94864dc9ae085833913cf9aaff1",
"assets/assets/orgs/lions/covers/OS.jpg": "b33ccd6c4be4a7799a16f792c51bda94",
"assets/assets/orgs/lions/covers/Cuisina.png": "8ef64fa7ad3de2c6d4773163d16b936c",
"assets/assets/orgs/lions/covers/DECO.png": "04a53f0575b434a58e76b5b83b51c9b6",
"assets/assets/orgs/lions/covers/Toushin.jpg": "7929716fb0989f7db29d42ff9c38ea14",
"assets/assets/orgs/lions/covers/ProjLaan.png": "66a28b5e636728ef9f38418ba53182d9",
"assets/assets/orgs/lions/covers/BBI.jpg": "f7b6469ce5158d50b2ba98b42fd69b93",
"assets/assets/orgs/lions/covers/BlueSymph.jpg": "bf823476dfb751281d864466457d8f6c",
"assets/assets/orgs/lions/logos/UXS.png": "373500d7ee47a76fd095c275ec664d1f",
"assets/assets/orgs/lions/logos/CASA.png": "9018782fc5314cb2b47ed9845a4748fa",
"assets/assets/orgs/lions/logos/ProjKabuhayan.png": "97c65ccb9d2a06168a13f082e0ceb7e4",
"assets/assets/orgs/lions/logos/ACE.png": "93a3fb0831b5bc0d3cabef60816f04cc",
"assets/assets/orgs/lions/logos/OS.png": "f9e4fafb983305a41e8dc9fad67532d2",
"assets/assets/orgs/lions/logos/byte.png": "6ec965dc0f41f7b5a7cfcbf82a262ff9",
"assets/assets/orgs/lions/logos/THINC.png": "accc198d964bfc137f12566b01375d25",
"assets/assets/orgs/lions/logos/BLINK.png": "8ae3508062bc321f31683be42389386c",
"assets/assets/orgs/lions/logos/AGILA.png": "99eb2055e1ac0378cd833986c49d997c",
"assets/assets/orgs/lions/logos/FIT.png": "2015c8989db0c51f4e587bfd37426486",
"assets/assets/orgs/lions/logos/MOKOA.png": "63c946e79aaed1f25029650d5dfaec43",
"assets/assets/orgs/lions/logos/JFEL.png": "ef38db7244e0ae1fcd40e92c45de4653",
"assets/assets/orgs/lions/logos/Cuisina.jpg": "7984c7b166739acdcf4c7800a91f718e",
"assets/assets/orgs/lions/logos/WS.png": "66ad01acb134e2edfef9d62cb38f062e",
"assets/assets/orgs/lions/logos/Kusina.png": "5d4df8dbc3bfe50fabaac7162ba07220",
"assets/assets/orgs/lions/logos/DSC.png": "dbc4d782aaab0de020cb371b51d0ef3c",
"assets/assets/orgs/lions/logos/BlueBird.png": "b3e02999723e14db97d1217ea9a03f31",
"assets/assets/orgs/lions/logos/EffectiveAltruism.png": "9cbec5cfdf0cb272d4b9c04ae6c3c115",
"assets/assets/orgs/lions/logos/RCLIFE.png": "ab903d892ee9bcdba789adaa81f67eb6",
"assets/assets/orgs/lions/logos/CYA.png": "783a94f7cf31df952c1bf6c6b6b60abf",
"assets/assets/orgs/lions/logos/DECO.png": "8337f30ad3e26111f56f8844bad10898",
"assets/assets/orgs/lions/logos/HFH.png": "704b5efec9830e538349be7eb2b37efe",
"assets/assets/orgs/lions/logos/LGL.png": "8133320e52fe73f756c404742b758c15",
"assets/assets/orgs/lions/logos/TOUSHIN.png": "e043a7d680fb5adb23b3347588582129",
"assets/assets/orgs/lions/logos/LAHI.png": "4e665bb9e30628bbdc4e5833870651d7",
"assets/assets/orgs/lions/logos/ProjLaan.png": "99a4828ad6c06c8f42da21a61650fb6c",
"assets/assets/orgs/lions/logos/lions.jpg": "bbfb86ca4b86f3d36d45d7a93e9e4847",
"assets/assets/orgs/lions/logos/BlueHangkuk.png": "4c8637aafe497bf36ffdd86009dc1d59",
"assets/assets/orgs/lions/logos/BlueSymph.png": "04813e6c43c70bf5e5b7e19282e43e66",
"assets/assets/data/orgs.json": "f99ee467c08ca2bddc9bab6c77b8820d",
"assets/assets/data/coa.json": "41631a789cb03040339e3ac4dc5cc3a9",
"assets/assets/data/lions.json": "ee2458e39a9f3d4c86d0f9d1a42138f9",
"assets/assets/fonts/Nunito-ExtraBold.ttf": "19caf1c06e022593ea4657734d691c86",
"assets/assets/fonts/Nunito-LightItalic.ttf": "25df63848c38644bc5db9889e37cc92d",
"assets/assets/fonts/Nunito-Regular.ttf": "d2e691bc4a2b696929172cb3d22ce8ba",
"assets/assets/fonts/Nunito-SemiBold.ttf": "76ae20d4d4b7d46e613d2581512fcf73",
"assets/assets/fonts/Nunito-SemiBoldItalic.ttf": "cc0b18c6b7545c4446859f76fb2f7efb",
"assets/assets/fonts/Nunito-ExtraLightItalic.ttf": "c878bb8e559dd2f54f3262b98d194e9c",
"assets/assets/fonts/Nunito-Black.ttf": "6abf597a1f3f44fd10bdcb7b86b494f0",
"assets/assets/fonts/Nunito-Italic.ttf": "80150d05eb36a3c810bf33899a8abdfd",
"assets/assets/fonts/Nunito-ExtraLight.ttf": "4f3d2e011a08fae118e258bcaf0dfa13",
"assets/assets/fonts/Nunito-Bold.ttf": "1cd294a771f26752bbb8d8d5210f6412",
"assets/assets/fonts/GoogleSans-Regular-v1.27.ttf": "51134713ade7b1f137e06ce395d39d40",
"assets/assets/fonts/Nunito-BlackItalic.ttf": "d9a817716cae511d364b91b69dbf34b8",
"assets/assets/fonts/Nunito-Light.ttf": "6a4fadd273f85b2ae8c6ffadbcf7beec",
"assets/assets/fonts/Nunito-ExtraBoldItalic.ttf": "0c327829daf4a70d53a4ff94a91021cc",
"assets/assets/fonts/Nunito-BoldItalic.ttf": "534bd4bc232fb17ff48c931ff585bbad",
"assets/assets/dsc.png": "bd954ceeeb42b91899ebe1c3b0d79850",
"assets/NOTICES": "84a7d7d04562598e5a7b37afa23e0237",
"assets/AssetManifest.json": "ef7ba671144e171320482c9ddc86148c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5a37ae808cf9f652198acde612b5328d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "2aa350bd2aeab88b601a593f793734c0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "2bca5ec802e40d3f4b60343e346cedde",
"assets/packages/rflutter_alert/assets/images/icon_warning.png": "ccfc1396d29de3ac730da38a8ab20098",
"assets/packages/rflutter_alert/assets/images/icon_error.png": "f2b71a724964b51ac26239413e73f787",
"assets/packages/rflutter_alert/assets/images/icon_info.png": "3f71f68cae4d420cecbf996f37b0763c",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_warning.png": "e4606e6910d7c48132912eb818e3a55f",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_error.png": "2da9704815c606109493d8af19999a65",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_info.png": "612ea65413e042e3df408a8548cefe71",
"assets/packages/rflutter_alert/assets/images/2.0x/close.png": "abaa692ee4fa94f76ad099a7a437bd4f",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_success.png": "7d6abdd1b85e78df76b2837996749a43",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_warning.png": "e5f369189faa13e7586459afbe4ffab9",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_error.png": "15ca57e31f94cadd75d8e2b2098239bd",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_info.png": "e68e8527c1eb78949351a6582469fe55",
"assets/packages/rflutter_alert/assets/images/3.0x/close.png": "98d2de9ca72dc92b1c9a2835a7464a8c",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_success.png": "1c04416085cc343b99d1544a723c7e62",
"assets/packages/rflutter_alert/assets/images/close.png": "13c168d8841fcaba94ee91e8adc3617f",
"assets/packages/rflutter_alert/assets/images/icon_success.png": "8bb472ce3c765f567aa3f28915c1a8f4",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/FontManifest.json": "6c6f0286b669672ab36360634f757c79",
"assets/fonts/MaterialIcons-Regular.otf": "a68d2a28c526b3b070aefca4bac93d25",
"favicon.ico": "2f092374158efddf6abbd074f5887045",
"favicon-16x16.png": "d72a451ff342639b021d5df03c172563",
"apple-icon.png": "ed714f6a8a77cf3e2c972e47db40599e",
"apple-icon-57x57.png": "177585fb19699feb31e8c4fb4a950dc7",
"apple-icon-114x114.png": "430ac3757c11f77cb59b4af2fda05389",
"android-icon-144x144.png": "a70d9aac74f796297560082d3b5174ba",
"android-icon-96x96.png": "b9423849b36acad1cfecfaa364b1f2ac",
"android-icon-36x36.png": "0bc7ea7c7c85a6dc6b20f10dcdf0c563",
"android-icon-72x72.png": "df4467890a54e592d2f0584dd2a64658",
"apple-icon-144x144.png": "a70d9aac74f796297560082d3b5174ba",
"android-icon-48x48.png": "79145846b4f0acb63279992c3e27258e",
"main.dart.js": "14a76ca166d4cb683d9466cb40cd1ad4",
"ms-icon-144x144.png": "a70d9aac74f796297560082d3b5174ba",
"favicon-32x32.png": "64a22ace2b6c6145d4058d181ae7a564",
"apple-icon-60x60.png": "90ac578743fe174b9919db3133fd6a98",
"index.html": "a148686134bac6493999687f9ad736e0",
"/": "a148686134bac6493999687f9ad736e0",
"ms-icon-70x70.png": "8720437a718628f26e940595774840c7",
"ms-icon-310x310.png": "914a269a46255f79c2e66ebcabac2f15",
"ms-icon-150x150.png": "e88daa697c0eb5177c988df6f154e324",
"favicon-96x96.png": "b9423849b36acad1cfecfaa364b1f2ac",
"apple-icon-72x72.png": "df4467890a54e592d2f0584dd2a64658",
"apple-icon-120x120.png": "d65548534eb16a4e11221bb3c8118273",
"apple-icon-152x152.png": "c67be2f44bbc0c55f9b48c901cc72da8",
"android-icon-192x192.png": "7f44cb14872b01028c6243ffde61e06d",
"apple-icon-precomposed.png": "ed714f6a8a77cf3e2c972e47db40599e",
"apple-icon-180x180.png": "b0a61a55b3551e7e6d31c2af642e81aa",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"apple-icon-76x76.png": "e4edeb096a2514689bcace89d27bccc5"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      // Provide a 'reload' param to ensure the latest version is downloaded.
      return cache.addAll(CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');

      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }

      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#')) {
    key = '/';
  }
  // If the URL is not the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache. Ensure the resources are not cached
        // by the browser for longer than the service worker expects.
        var modifiedRequest = new Request(event.request, {'cache': 'reload'});
        return response || fetch(modifiedRequest).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    return self.skipWaiting();
  }

  if (event.message === 'downloadOffline') {
    downloadOffline();
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
