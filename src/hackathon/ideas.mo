module {
  public type Idea = { idea : Text; desc : Text; link : Text; };

  // The idea components are stored in nested arrays for easy editing...

  public let superpowerList : [[Text]] = [
    ["Open", "The Internet Computer — like the Internet — is designed to be ownerless and accessible to all."],
    ["Hackproof", "The Internet Computer is cryptographically secure by default and software built on it is guaranteed to run precisely as coded."],
    ["Persistent", "The Internet Computer persists the memory pages in which your canister runs, thus the state of an actor and all its memory data structures survive indefinitely."],
    ["Serverless", "The Internet Computer provides an open platform where software and services run directly on the internet itself rather than on a proprietary infrastructure or a specific hosting service."],
    ["Autonomous", "The Internet Computer paves the way for Autonomous systems, which are made possible through canister- and network-wide governance systems."],
    ["Modular", "The Internet Computer enables developers to write services in “canisters” that communicate with each other and share functions in ways that increase productivity and efficiency while leaving room to innovate and improve projects with confidence."],
    ["Tokenized", "The Internet Computer allows you to process value and identity like data, enabling new markets and ecosystems."],
    ["Anonymized", "The Internet Computer enables users to own their cryptographically-secure identities and control who sees it."],
    ["Scalable", "The Internet Computer has the capacity to scale as needed, by making new node machines and forming them into “subnetworks” that can host software canisters."],
    ["Composable", "The Internet Computer guarantees API access to developers and innovators, restoring the Internet to its open and collaborative roots."],
  ];

  public let softwareList : [[Text]] = [
    ["web app", "Canister architecture makes it easy to build and access user-friendly web apps through a traditional browser."],
    ["mobile app", "Developers can use canisters and existing frameworks to build Internet Computer applications designed to run on a mobile device such as a phone, tablet, or watch."],
    ["desktop app", "Smart devices can be connected to other devices or networks through the Internet Computer to create interactive and autonomous systems."],
    ["smart device", "Inter-canister calls and scalability solutions on the Internet Computer can easily set up connected series of data processing elements."],
    ["machine learning", "Build applications that leverage machine learning algorithms, and maybe someday with your help, run models natively on the Internet Computer!"],
    ["developer tool", "Help developers create, debug, maintain, and support programs and applications on The Internet Computer."],
    ["operating system", "Create your own system software that provides common services for computer programs."],
    ["virtualization", "The distributed and decentralized architecture of The Internet Computer enables multiple connected computers to operate like a single very powerful virtual machine."],
    ["storage", "The Internet Computer takes care of storage volumes and devices for you."],
    ["networking", "Easily create public or private networks on top of the Internet Computer, taking advantage of Internet Computer Protocol’s default cryptographic security. "],
    ["enterprise system", "Enterprises can drastically reduce IT complexity, cost, and risk by eliminating middleware and building on the Internet Computer."],
    ["pan-industry platform", "The Internet Computer easily integrates with most modern software, enabling novel industry-wide and cross-industry solutions."],
  ];

  public let solutionList : [[Text]] = [
    ["to end poverty in all its forms.", "More than 700 million people, or 10 per cent of the world population, still live in extreme poverty today, struggling to fulfil the most basic needs like health, education, and access to water and sanitation, to name a few.", "https://www.un.org/sustainabledevelopment/poverty/"],
    ["to achieve zero hunger.", "With more than a quarter of a billion people potentially at the brink of starvation, swift action needs to be taken to provide food and humanitarian relief to the most at-risk regions.", "https://www.un.org/sustainabledevelopment/hunger/"],
    ["to ensure healthy lives and promote well-being.", "Currently, the world is facing a global health crisis unlike any other — COVID-19 is spreading human suffering, destabilizing the global economy and upending the lives of billions of people around the globe.", "https://www.un.org/sustainabledevelopment/health/"],
    ["to provide quality education.", "Education enables upward socioeconomic mobility and is a key to escaping poverty. And more than half of all children and adolescents worldwide are not meeting minimum proficiency standards in reading and mathematics.", "https://www.un.org/sustainabledevelopment/education/"],
    ["to achieve gender equality and empower all women and girls.", "Gender equality is not only a fundamental human right, but a necessary foundation for a peaceful, prosperous and sustainable world.", "https://www.un.org/sustainabledevelopment/gender-equality/"],
    ["to ensure access to water and sanitation for all.", "Worldwide, one in three people do not have access to safe drinking water, two out of five people do not have a basic hand-washing facility with soap and water, and more than 673 million people still practice open defecation, Ryan.", "https://www.un.org/sustainabledevelopment/water-and-sanitation/"],
    ["to ensure access to affordable, reliable, sustainable and modern energy.", "Access to electricity in poorer countries has begun to accelerate, energy efficiency continues to improve, and renewable energy is making impressive gains in the electricity sector.", "https://www.un.org/sustainabledevelopment/energy/"],
    ["to promote inclusive and sustainable economic growth, employment and decent work for all.", "Sustained and inclusive economic growth can drive progress, create decent jobs for all and improve living standards.", "https://www.un.org/sustainabledevelopment/economic-growth/"],
    ["to build resilient infrastructure, promote sustainable industrialization and foster innovation.", "Inclusive and sustainable industrialization, together with innovation and infrastructure, can unleash dynamic and competitive economic forces that generate employment and income. They play a key role in introducing and promoting new technologies, facilitating international trade and enabling the efficient use of resources.", "https://www.un.org/sustainabledevelopment/infrastructure-industrialization/"],
    ["to reduce inequality within and among countries.", "Inequality within and among countries is a persistent cause for concern. Despite some positive signs toward reducing inequality in some dimensions, such as reducing relative income inequality in some countries and preferential trade status benefiting lower-income countries, inequality still persists.", "https://www.un.org/sustainabledevelopment/inequality/"],
    ["to make cities inclusive, safe, resilient and sustainable.", "The world is becoming increasingly urbanized. Since 2007, more than half the world’s population has been living in cities, and that share is projected to rise to 60 per cent by 2030.", "https://www.un.org/sustainabledevelopment/cities/"],
    ["to ensure sustainable consumption and production patterns.", "Worldwide consumption and production — a driving force of the global economy — rest on the use of the natural environment and resources in a way that continues to have destructive impacts on the planet.", "https://www.un.org/sustainabledevelopment/sustainable-consumption-production/"],
    ["to take urgent action to combat climate change and its impacts.", "Climate change is affecting every country on every continent. It is disrupting national economies and affecting lives. Weather patterns are changing, sea levels are rising, and weather events are becoming more extreme.", "https://www.un.org/sustainabledevelopment/climate-change/"],
    ["to conserve and sustainably use the oceans, seas and marine resources.", "The ocean drives global systems that make the Earth habitable for humankind. Our rainwater, drinking water, weather, climate, coastlines, much of our food, and even the oxygen in the air we breathe, are all ultimately provided and regulated by the sea.", "https://www.un.org/sustainabledevelopment/oceans/"],
    ["to sustainably manage forests, combat desertification, halt and reverse land degradation, and halt biodiversity loss.", "Nature is critical to our survival: nature provides us with our oxygen, regulates our weather patterns, pollinates our crops, produces our food, feed and fibre. Human activity has altered almost 75 per cent of the earth’s surface, squeezing wildlife and nature into an ever-smaller corner of the planet.", "https://www.un.org/sustainabledevelopment/biodiversity/"],
    ["to promote just, peaceful and inclusive societies.", "The number of people fleeing war, persecution and conflict exceeded 70 million in 2018, the highest level recorded by the UN refugee agency (UNHCR) in almost 70 years. In 2019, the United Nations tracked 357 killings and 30 enforced disappearances of human rights defenders, journalists and trade unionists in 47 countries.", "https://www.un.org/sustainabledevelopment/peace-justice/"],
  ];

  // ...but we transform them into Idea types to simplify the interface.

  public func makeIdea(el : [Text]) : Idea {
    var _link = "";
    if (el.len() == 3) { _link := el[2]; };
    { idea = el[0]; desc = el[1]; link = _link }
  };
};
