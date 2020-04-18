import 'package:flutter/material.dart';

Color primaryBlack = Colors.lime;

class DataSource{
  static String quote = "Nothing in life is to be feared, it is only to be understood. Now is the time to understand more, so that we may fear less.";

  static String quoteSin = "ජීවිතයේ කිසිවක් බිය විය යුතු නැත, එය තේරුම් ගත යුතුය. වැඩි විස්තර තේරුම් ගැනීමට දැන් කාලයයි, එවිට අපට අඩුවෙන් බිය විය හැකිය.";

  static List questionAnswersEng = [
    {
      "question": "What is a coronavirus?",
      "answer":
      "Coronaviruses are a large family of viruses which may cause illness in animals or humans.  In humans, several coronaviruses are known to cause respiratory infections ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS) and Severe Acute Respiratory Syndrome (SARS). The most recently discovered coronavirus causes coronavirus disease COVID-19."
    },
    {
      "question": "What is COVID-19?",
      "answer":
      "COVID-19 is the infectious disease caused by the most recently discovered coronavirus. This new virus and disease were unknown before the outbreak began in Wuhan, China, in December 2019."
    },
    {
      "question": "What are the symptoms of COVID-19?",
      "answer":
      "The most common symptoms of COVID-19 are fever, tiredness, and dry cough. Some patients may have aches and pains, nasal congestion, runny nose, sore throat or diarrhea. These symptoms are usually mild and begin gradually. Some people become infected but don’t develop any symptoms and don't feel unwell. Most people (about 80%) recover from the disease without needing special treatment. Around 1 out of every 6 people who gets COVID-19 becomes seriously ill and develops difficulty breathing. Older people, and those with underlying medical problems like high blood pressure, heart problems or diabetes, are more likely to develop serious illness. People with fever, cough and difficulty breathing should seek medical attention."
    },
    {
      "question": "How does COVID-19 spread?",
      "answer":
      "People can catch COVID-19 from others who have the virus. The disease can spread from person to person through small droplets from the nose or mouth which are spread when a person with COVID-19 coughs or exhales. These droplets land on objects and surfaces around the person. Other people then catch COVID-19 by touching these objects or surfaces, then touching their eyes, nose or mouth. People can also catch COVID-19 if they breathe in droplets from a person with COVID-19 who coughs out or exhales droplets. This is why it is important to stay more than 1 meter (3 feet) away from a person who is sick. \nWHO is assessing ongoing research on the ways COVID-19 is spread and will continue to share updated findings."
    },
    {
      "question":
      "Can the virus that causes COVID-19 be transmitted through the air?",
      "answer":
      "Studies to date suggest that the virus that causes COVID-19 is mainly transmitted through contact with respiratory droplets rather than through the air"
    },
    {
      "question": "Can CoVID-19 be caught from a person who has no symptoms?",
      "answer":
      "The main way the disease spreads is through respiratory droplets expelled by someone who is coughing. The risk of catching COVID-19 from someone with no symptoms at all is very low. However, many people with COVID-19 experience only mild symptoms. This is particularly true at the early stages of the disease. It is therefore possible to catch COVID-19 from someone who has, for example, just a mild cough and does not feel ill.  WHO is assessing ongoing research on the period of transmission of COVID-19 and will continue to share updated findings.    "
    },
    {
      "question":
      "Can I catch COVID-19 from the feces of someone with the disease?",
      "answer":
      "The risk of catching COVID-19 from the feces of an infected person appears to be low. While initial investigations suggest the virus may be present in feces in some cases, spread through this route is not a main feature of the outbreak. WHO is assessing ongoing research on the ways COVID-19 is spread and will continue to share new findings. Because this is a risk, however, it is another reason to clean hands regularly, after using the bathroom and before eating."
    },
    {
      "question": "How likely am I to catch COVID-19?",
      "answer":
      "The risk depends on where you  are - and more specifically, whether there is a COVID-19 outbreak unfolding there.\nFor most people in most locations the risk of catching COVID-19 is still low. However, there are now places around the world (cities or areas) where the disease is spreading. For people living in, or visiting, these areas the risk of catching COVID-19 is higher. Governments and health authorities are taking vigorous action every time a new case of COVID-19 is identified. Be sure to comply with any local restrictions on travel, movement or large gatherings. Cooperating with disease control efforts will reduce your risk of catching or spreading COVID-19.\nCOVID-19 outbreaks can be contained and transmission stopped, as has been shown in China and some other countries. Unfortunately, new outbreaks can emerge rapidly. It’s important to be aware of the situation where you are or intend to go. WHO publishes daily updates on the COVID-19 situation worldwide."
    },
    {
      "question": "Who is at risk of developing severe illness?",
      "answer":
      "While we are still learning about how COVID-2019 affects people, older persons and persons with pre-existing medical conditions (such as high blood pressure, heart disease, lung disease, cancer or diabetes)  appear to develop serious illness more often than others. "
    },
    {
      "question": "Should I wear a mask to protect myself?",
      "answer":
      "Only wear a mask if you are ill with COVID-19 symptoms (especially coughing) or looking after someone who may have COVID-19. Disposable face mask can only be used once. If you are not ill or looking after someone who is ill then you are wasting a mask. There is a world-wide shortage of masks, so WHO urges people to use masks wisely.\nWHO advises rational use of medical masks to avoid unnecessary wastage of precious resources and mis-use of masks\nThe most effective ways to protect yourself and others against COVID-19 are to frequently clean your hands, cover your cough with the bend of elbow or tissue and maintain a distance of at least 1 meter (3 feet) from people who are coughing or sneezing"
    },
    {
      "question":
      "Are antibiotics effective in preventing or treating the COVID-19?",
      "answer":
      "No. Antibiotics do not work against viruses, they only work on bacterial infections. COVID-19 is caused by a virus, so antibiotics do not work. Antibiotics should not be used as a means of prevention or treatment of COVID-19. They should only be used as directed by a physician to treat a bacterial infection. "
    }
  ];

  static List questionAnswers = [
    {
      "question": "කොරෝනා වයිරස් යනු කුමක්ද?",
      "answer":
      "කොරෝනා වයිරස් යනු සතුන් හෝ මිනිසුන් තුළ රෝගාබාධ ඇති කළ හැකි විශාල වෛරස් පවුලකි. මිනිසුන් තුළ, කිරීටක වෛරස් කිහිපයක් පොදු සෙම්ප්‍රතිශ්‍යාවේ සිට මැදපෙරදිග ශ්වසන සින්ඩ්‍රෝමය (MERS) සහ දරුණු උග්‍ර ශ්වසන සින්ඩ්‍රෝමය (SARS) වැනි දරුණු රෝග දක්වා ශ්වසන ආසාදන ඇති කරන බව දන්නා කරුණකි. මෑතකදී සොයාගත් කොරෝනා වයිරස් මගින් කොරෝනා වයිරස් රෝගයට හේතු වේ COVID-19."
    },
    {
      "question": "COVID-19 යනු කුමක්ද?",
      "answer":
      "COVID-19 යනු මෑතකදී සොයාගත් කොරෝනා වයිරසය නිසා ඇතිවන බෝවන රෝගයකි. මෙම නව වෛරසය හා රෝගය චීනයේ වුහාන් හි 2019 දෙසැම්බර් මාසයේදී ආරම්භ වීමට පෙර නොදැන සිටියහ."
    },
    {
      "question": "COVID-19 හි රෝග ලක්ෂණ මොනවාද?",
      "answer":
      "COVID-19 හි වඩාත් පොදු රෝග ලක්ෂණ වන්නේ උණ, විඩාව සහ වියළි කැස්සයි. සමහර රෝගීන්ට කැක්කුම හා වේදනාව, නාසික තදබදය, නාසයේ නාසය, උගුරේ අමාරුව හෝ පාචනය ඇති විය හැක. මෙම රෝග ලක්ෂණ සාමාන්‍යයෙන් මෘදු වන අතර ක්‍රමයෙන් ආරම්භ වේ. සමහර අය ආසාදනය වී ඇති නමුත් කිසිදු රෝග ලක්ෂණයක් වර්ධනය නොවන අතර අසනීප බවක් දැනෙන්නේ නැත. බොහෝ අය (80% ක් පමණ) විශේෂ ප්‍රතිකාර අවශ්‍ය නොවී රෝගයෙන් සුවය ලබති. COVID-19 ලබා ගන්නා සෑම පුද්ගලයින් 6 දෙනෙකුගෙන් එක් අයෙකු බරපතල ලෙස රෝගාතුර වී හුස්ම ගැනීමේ අපහසුතාවයක් ඇති කරයි. මහලු අය සහ අධි රුධිර පීඩනය, හෘදයාබාධ හෝ දියවැඩියාව වැනි වෛද්‍යමය ගැටළු ඇති අයට බරපතල රෝගාබාධ ඇතිවීමේ ඉඩකඩ වැඩිය. උණ, කැස්ස සහ හුස්ම ගැනීමේ අපහසුතා ඇති අය වෛද්‍ය ප්‍රතිකාර ලබා ගත යුතුය."
    },
    {
      "question": "COVID-19 පැතිරෙන්නේ කෙසේද?",
      "answer":
      "මිනිසුන්ට වෛරසය ඇති අයගෙන් COVID-19 අල්ලා ගත හැකිය. COVID-19 සහිත පුද්ගලයෙකු කැස්ස හෝ හුස්ම හෙලන විට නාසයෙන් හෝ මුඛයෙන් කුඩා ජල බිඳිති හරහා රෝගය පුද්ගලයාගෙන් පුද්ගලයාට පැතිර යා හැකිය. මෙම ජල බිඳිති පුද්ගලයා වටා ඇති වස්තූන් හා පෘෂ් aces යන් මතට ගොඩ වේ. අනෙක් අය COVID-19 අල්ලා ගන්නේ මෙම වස්තූන් හෝ පෘෂ් aces යන් ස්පර්ශ කිරීමෙන් පසුව ඔවුන්ගේ ඇස්, නාසය හෝ මුඛය ස්පර්ශ කිරීමෙනි. COVID-19 සහිත පුද්ගලයෙකුගේ ජල බිඳිති ආශ්වාස කළහොත් මිනිසුන්ට COVID-19 අල්ලා ගත හැකිය. අසනීපයෙන් පෙළෙන පුද්ගලයෙකුගෙන් මීටර 1 ක් (අඩි 3) වඩා දුරින් සිටීම වැදගත් වන්නේ මේ නිසා ය. CO n COVID-19 ව්‍යාප්ත වී ඇති ආකාරය පිළිබඳ අඛණ්ඩ පර්යේෂණ තක්සේරු කරන අතර යාවත්කාලීන කරන ලද සොයාගැනීම් දිගටම බෙදා ගනු ඇත."
    },
    {
      "question":
      "COVID-19 වලට හේතු වන වෛරසය වාතය හරහා සම්ප්‍රේෂණය කළ හැකිද?",
      "answer":
      "මේ දක්වා කරන ලද අධ්‍යයනවලින් පෙනී යන්නේ COVID-19 වලට හේතු වන වෛරසය ප්‍රධාන වශයෙන් සම්ප්‍රේෂණය වන්නේ වාතය හරහා නොව ශ්වසන ජල බිඳිති සමඟ සම්බන්ධ වීමෙනි"
    },
    {
      "question": "රෝග ලක්ෂණ නොමැති පුද්ගලයෙකුගෙන් CoVID-19 අල්ලා ගත හැකිද?",
      "answer":
      "රෝගය පැතිරෙන ප්‍රධාන ක්‍රමය වන්නේ කැස්සෙන් පෙළෙන අයෙකු විසින් නෙරපා හරින ලද ශ්වසන ජල බිඳිති ය. කිසිදු රෝග ලක්ෂණයක් නොමැති අයෙකුගෙන් COVID-19 අල්ලා ගැනීමේ අවදානම ඉතා අඩුය. කෙසේ වෙතත්, COVID-19 සහිත බොහෝ අය අත්විඳින්නේ මෘදු රෝග ලක්ෂණ පමණි. රෝගයේ මුල් අවධියේදී මෙය විශේෂයෙන් සත්‍ය වේ. එබැවින් COVID-19 අල්ලා ගැනීමට හැකි වන්නේ, උදාහරණයක් ලෙස, මෘදු කැස්සක් ඇති අතර රෝගාතුර නොවීමයි. COVID-19 සම්ප්‍රේෂණය වන කාල පරිච්ඡේදය පිළිබඳ ලෝක සෞඛ්‍ය සංවිධානය තක්සේරු කරමින් සිටින අතර යාවත්කාලීන කරන ලද සොයාගැනීම් දිගටම බෙදාගනු ඇත."
    },
    {
      "question":
      "රෝගයෙන් පෙළෙන කෙනෙකුගේ මළ මූත්‍රාවෙන් මට COVID-19 අල්ලා ගත හැකිද?",
      "answer":
      "ආසාදිත පුද්ගලයෙකුගේ මළ මූත්‍රාවලින් COVID-19 අල්ලා ගැනීමේ අවදානම අඩු බව පෙනේ. මූලික පරීක්ෂණ වලින් පෙනී යන්නේ සමහර අවස්ථාවලදී වෛරසය මළ මූත්‍රාවල පැවතිය හැකි නමුත් මෙම මාර්ගය හරහා පැතිරීම පුපුරා යාමේ ප්‍රධාන අංගයක් නොවන බවයි. COVID-19 ව්‍යාප්ත වී ඇති ආකාරය පිළිබඳ අඛණ්ඩ පර්යේෂණ ලෝක සෞඛ්‍ය සංවිධානය තක්සේරු කරමින් සිටින අතර නව සොයාගැනීම් දිගටම බෙදා ගනු ඇත. කෙසේ වෙතත් මෙය අවදානමක් බැවින් නාන කාමරය භාවිතා කිරීමෙන් පසුව සහ කෑමට පෙර නිතිපතා අත් පිරිසිදු කිරීම තවත් හේතුවකි."
    },
    {
      "question": "COVID-19 අල්ලා ගැනීමට මා කොපමණ ඉඩ තිබේද?",
      "answer":
      "අවදානම රඳා පවතින්නේ ඔබ සිටින ස්ථානය මතය - සහ වඩාත් නිශ්චිතවම, එහි COVID-19 පුපුරා යාමක් තිබේද යන්න. \ N බොහෝ ස්ථානවල COVID-19 අල්ලා ගැනීමේ අවදානම තවමත් අඩුය. කෙසේ වෙතත්, දැන් ලොව පුරා (නගර හෝ ප්‍රදේශ) රෝගය පැතිරෙන ස්ථාන තිබේ. මෙම ප්‍රදේශවල ජීවත්වන හෝ සංචාරය කරන පුද්ගලයින් සඳහා COVID-19 අල්ලා ගැනීමේ අවදානම වැඩිය. COVID-19 හි නව නඩුවක් හඳුනා ගන්නා සෑම අවස්ථාවකම රජයන් සහ සෞඛ්‍ය බලධාරීන් දැඩි ක්‍රියාමාර්ග ගනිමින් සිටී. සංචාරය, චලනය හෝ විශාල රැස්වීම් සඳහා වන ඕනෑම දේශීය සීමාවන්ට අනුකූල වීමට වග බලා ගන්න. රෝග පාලනය කිරීමේ ප්‍රයත්නයන් සමඟ සහයෝගයෙන් කටයුතු කිරීමෙන් COVID-19 අල්ලා ගැනීමේ හෝ පැතිරීමේ අවදානම අඩු කරනු ඇත. OV n චීනයේ සහ තවත් සමහර රටවල පෙන්වා ඇති පරිදි COVID-19 පුපුරා යාම අඩංගු විය හැකි අතර සම්ප්‍රේෂණය නතර කළ හැකිය. අවාසනාවකට මෙන්, නව පිපිරීම් වේගයෙන් මතු විය හැකිය. ඔබ සිටින තත්වය පිළිබඳව දැනුවත්ව සිටීම හෝ යාමට අදහස් කිරීම වැදගත්ය. ලෝක සෞඛ්‍ය සංවිධානය ලොව පුරා COVID-19 තත්ත්වය පිළිබඳ දිනපතා යාවත්කාලීන කිරීම් ප්‍රකාශයට පත් කරයි."
    },
    {
      "question": "දරුණු රෝගාබාධ ඇතිවීමේ අවදානම ඇත්තේ කවුද?",
      "answer":
      "COVID-2019 මිනිසුන්ට බලපාන්නේ කෙසේද යන්න පිළිබඳව අප තවමත් ඉගෙන ගනිමින් සිටින අතර, වයස්ගත පුද්ගලයින් සහ පූර්ව වෛද්‍ය තත්වයන් ඇති පුද්ගලයින් (අධි රුධිර පීඩනය, හෘද රෝග, පෙනහළු රෝග, පිළිකා හෝ දියවැඩියාව වැනි) අනෙක් අයට වඩා බොහෝ විට බරපතල රෝගාබාධ ඇති වන බව පෙනේ."
    },
    {
      "question": "මා ආරක්ෂා කර ගැනීම සඳහා වෙස්මුහුණක් පැළඳිය යුතුද?",
      "answer":
      "ඔබ COVID-19 රෝග ලක්ෂණ (විශේෂයෙන් කැස්ස) හෝ COVID-19 ඇති අයෙකු රැකබලා ගන්නේ නම් පමණක් වෙස්මුහුණක් පැළඳ ගන්න. ඉවත දැමිය හැකි මුහුණු ආවරණ භාවිතා කළ හැක්කේ එක් වරක් පමණි. ඔබ අසනීප වී හෝ අසනීපව සිටින අයෙකු බලා ගන්නේ නම් ඔබ වෙස්මුහුණක් නාස්ති කරයි. ලෝක ව්‍යාප්ත වෙස් මුහුණු හිඟයක් පවතින බැවින් ලෝක සෞඛ්‍ය සංවිධානය වෙස් මුහුණු ely ානවන්තව භාවිතා කරන ලෙස ජනතාවගෙන් ඉල්ලා සිටී. COVID-19 ට එරෙහිව ඔබේ දෑත් නිතරම පිරිසිදු කිරීම, වැලමිට හෝ පටක වල නැමීමෙන් ඔබේ කැස්ස ආවරණය කිරීම සහ කැස්ස හෝ කිවිසුම් යන පුද්ගලයින්ගෙන් අවම වශයෙන් මීටර 1 ක් (අඩි 3 ක්) දුරක් පවත්වා ගැනීම."
    },
    {
      "question":
      "COVID-19 වැළැක්වීමට හෝ ප්‍රතිකාර කිරීමට ප්‍රතිජීවක effective ලදායීද?",
      "answer":
      "ප්‍රතිජීවක වෛරස් වලට එරෙහිව ක්‍රියා නොකරයි, ඒවා ක්‍රියාත්මක වන්නේ බැක්ටීරියා ආසාදන මත පමණි. COVID-19 වෛරසයක් නිසා ඇති වන බැවින් ප්‍රතිජීවක ක්‍රියා නොකරයි. COVID-19 වැළැක්වීම හෝ ප්‍රතිකාර කිරීම සඳහා ප්‍රතිජීවක භාවිතා නොකළ යුතුය. ඒවා භාවිතා කළ යුත්තේ බැක්ටීරියා ආසාදනයකට ප්‍රතිකාර කිරීම සඳහා වෛද්‍යවරයෙකුගේ උපදෙස් පරිදි පමණි."
    }
  ];



}