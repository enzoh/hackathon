let superpowers : [[Text]] = [
    ["Open", "description"],
    ["Hackproof", "description"],
    ["Persistent", "description"],
    ["Serverless", "description"],
    ["Autonomous", "description"],
    ["Modular", "description"],
    ["Tokenized", "description"],
    ["Anonymized", "description"],
    ["Scalable", "description"],
    ["Composable", "description"],
];

let software : [[Text]] = [
    ["web app", "description"],
    ["mobile app", "description"],
    ["desktop app", "description"],
    ["smart device", "description"],
    ["data pipeline", "description"],
    ["machine learning", "description"],
    ["runtime interpreter", "description"],
    ["developer tool", "description"],
    ["operating system", "description"],
    ["virtualization", "description"],
    ["storage", "description"],
    ["networking", "description"],
    ["enterprise software", "description"],
];

let solutions : [[Text]] = [
    ["to end poverty in all its forms everywhere.", "More than 700 million people, or 10 per cent of the world population, still live in extreme poverty today, struggling to fulfil the most basic needs like health, education, and access to water and sanitation, to name a few. The majority of people living on less than $1.90 a day live in sub-Saharan Africa. Worldwide, the poverty rate in rural areas is 17.2 per cent—more than three times higher than in urban areas.", "https://www.un.org/sustainabledevelopment/poverty/"],
    ["for zero hunger.", "With more than a quarter of a billion people potentially at the brink of starvation, swift action needs to be taken to provide food and humanitarian relief to the most at-risk regions.", "https://www.un.org/sustainabledevelopment/hunger/"],
    ["to ensure healthy lives and promote well-being for all at all ages.", "Ensuring healthy lives and promoting well-being at all ages is essential to sustainable development. Currently, the world is facing a global health crisis unlike any other — COVID-19 is spreading human suffering, destabilizing the global economy and upending the lives of billions of people around the globe.", "https://www.un.org/sustainabledevelopment/health/"],
    ["to provide quality education.", "Education enables upward socioeconomic mobility and is a key to escaping poverty. Over the past decade, major progress was made towards increasing access to education and school enrollment rates at all levels, particularly for girls. Nevertheless, about 260 million children were still out of school in 2018 — nearly one fifth of the global population in that age group. And more than half of all children and adolescents worldwide are not meeting minimum proficiency standards in reading and mathematics.", "https://www.un.org/sustainabledevelopment/education/"],
];

actor {
    public query func getLists() : async [[[Text]]] {
        [superpowers, software, solutions]
    };
};
