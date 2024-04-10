import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t = Translations.byText("pt_br") +
      {
        "pt_br": "",
        "en_us": "",
      } +
      {
        "pt_br": "Objetivo",
        "en_us": "Goal",
      } +
      {
        "pt_br": "Procuro oportunidades como desenvolvedor de aplicativos móveis, especializado em Flutter, para aplicar minha experiência em desenvolvimento de software, conhecimentos de UX e habilidades técnicas na criação de aplicações móveis inovadoras.",
        "en_us": "I'm looking for opportunities as a mobile application developer, specializing in Flutter, to apply my software development experience, UX knowledge and technical skills to create innovative mobile applications.",
      } +
      {
        "pt_br": "Resumo Profissional",
        "en_us": "Professional Resume",
      }+
      {
        "pt_br": "Tenho experiência em desenvolvimento de aplicativos para Android e iOS usando Flutter e Dart, incluindo design de interface de usuário e lançamento nas lojas de aplicativos.",
        "en_us": "I have experience developing apps for Android and iOS using Flutter and Dart, including user interface design and launch in app stores.",
      }+
      {
        "pt_br": "Experiência Profissional",
        "en_us": "Professional experience",
      }+
      {
        "pt_br": "Desenvolvedor Flutter na Pensenova",
        "en_us": "Flutter Developer at Pensenova",
      }+
      {
        "pt_br": "Responsável pelo desenvolvimento de aplicativos móveis para automação industrial, utilizando Flutter e Dart. Conduzindo o ciclo completo de desenvolvimento de aplicativos, desde a concepção até o lançamento, garantindo alta qualidade e performance e experiência do usuário. Destacando o projeto CoPal, no qual desenvolvi o aplicativo de parametrização juntamente com a UX/UI do sistema de controle do Robô. - 05/10/2020 até o presente",
        "en_us": "Responsible for developing mobile applications for industrial automation, using Flutter and Dart. Conducting the complete application development cycle, from conception to launch, ensuring high quality, performance and user experience. Highlighting the CoPal project, in which I developed the parameterization application together with the UX/UI of the Robot control system. - 10/05/2020 to now",
      }+
      {
        "pt_br": "Desenvolvedor de automação na Nova Tecnologia",
        "en_us": "Automation developer at Nova Tecnologia",
      }+
      {
        "pt_br": "Desenvolvimento de projetos de automação envolvendo sistemas de monitoramento industrial (Scada), robótica e aplicações voltadas para processos de pintura industrial. Elaboração de esquemas elétricos para montagem de quadros elétricos utilizando o EPLAN. – 06/10/2014 até 30/04/2018",
        "en_us": "Development of automation projects involving industrial monitoring systems (Scada), robotics and applications focused on industrial painting processes. Preparation of electrical diagrams for assembling electrical panels using EPLAN. – 10/06/2014 to 04/30/2018",
      }+
      {
        "pt_br": "Técnico em eletrônica na Flex Automation",
        "en_us": "Electronics technician at Flex Automation",
      }+
      {
        "pt_br": "Responsável pelo gerenciamento do setor de manutenção de módulos de automação residencial, também fiz parte do time que efetuava manutenção e montagem de placas de circuito eletrônico. - 02/05/2014 até 30/09/2014",
        "en_us": "Responsible for managing the maintenance sector of home automation modules, I was also part of the team that carried out maintenance and assembly of electronic circuit boards. - 02/05/2014 until 30/09/2014",
      }+
      {
        "pt_br": "Estagiário de automação na Nova Tecnologia",
        "en_us": "Automation intern at Nova Tecnologia",
      }+
      {
        "pt_br": "Desenvolvimento de sistemas de controle e automação predial e de eficiência energética.  05/11/2012 até 25/10/2013.",
        "en_us": "Development of building control and automation and energy efficiency systems. 05/11/2012 until 25/10/2013.",
      }+
      {
        "pt_br": "Formação Acadêmica",
        "en_us": "Academic education",
      }+
      {
        "pt_br": "Graduação em Engenharia de Controle e Automação",
        "en_us": "Degree in Control and Automation Engineering",
      }+
      {
        "pt_br": "IFSP Instituto Federal de Educação, Ciência e Tecnologia de São Paulo - 01/06/2009 a 28/08/2019",
        "en_us": "IFSP Federal Institute of Education, Science and Technology of São Paulo - 06/01/2009 to 08/28/2019",
      }+
      {
        "pt_br": "Técnico em Eletrônica",
        "en_us": "Electronics Technician",
      }+
      {
        "pt_br": "ETEC Professor Aprígio Gonzaga - 01/06/2007 a 15/12/2008",
        "en_us": "ETEC Professor Aprígio Gonzaga - 06/01/2007 to 12/15/2008",
      }+
      {
        "pt_br": "Cursos Complementares",
        "en_us": "Complementary courses",
      }+
      {
        "pt_br": "Certificado Profissional Google UX Design (Coursera - Nível 1 - Março de 2024)",
        "en_us": "Google UX Design Professional Certificate (Coursera - Level 1 - March 2024)",

      }+
      {
        "pt_br": "Flutter Provider Essential Course (Udemy - Março/Abril de 2024)",
        "en_us": "Flutter Provider Essential Course (Udemy - March/April 2024)",
      }+
      {
        "pt_br": "Habilidades",
        "en_us": "Skills",
      }+
      {
        "pt_br": "Linguagens: Dart, C/C++, Python, Bash, HTML, JavaScript",
        "en_us": "Languages: Dart, C/C++, Python, Bash, HTML, JavaScript",
      }+
      {
        "pt_br": "Ferramentas: Android Studio, VSCode",
        "en_us": "Tools: Android Studio, VSCode",
      }+
      {
        "pt_br": "Plataformas: Flutter, Android, iOS, PlatformIO, Linux, Arduino",
        "en_us": "Platforms: Flutter, Android, iOS, PlatformIO, Linux, Arduino",
      }+
      {
        "pt_br": "Versionamento de Código: Git, Github",
        "en_us": "Code Versioning: Git, Github",
      }+
      {
        "pt_br": "Idiomas: Inglês avançado",
        "en_us": "Languages: Portuguese and Advanced English",
      }+
      {
        "pt_br": "",
        "en_us": "",
      }+
      {
        "pt_br": "",
        "en_us": "",
      };

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
