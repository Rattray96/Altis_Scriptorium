/*
Item shop configs work by:
    Price of house
    Max number of furniture items
    Type: 0 = house, 1 = garage
    Offset to spawn vehicles (only if type is 1)
    Directional offset to spawn vehicles (only if type is 1)
    Lighting position
*/

class Buildings {
    class Houses {
        class Land_i_House_Big_02_V1_F {
            price = 1550000;
            maxFurniture = 100;
            type = 0;
            lightPos[] = {2,0,3.5};
        };

        class Land_i_House_Big_02_V2_F : Land_i_House_Big_02_V1_F{};
        class Land_i_House_Big_02_V3_F : Land_i_House_Big_02_V1_F{};

        class Land_i_House_Big_01_V1_F {
            price = 2200000;
            maxFurniture = 100;
            type = 0;
            lightPos[] = {0,-2,3.8};
        };

        class Land_i_House_Big_01_V2_F : Land_i_House_Big_01_V1_F{};
        class Land_i_House_Big_01_V3_F : Land_i_House_Big_01_V1_F{};

        class Land_i_House_Small_01_V1_F {
            price = 1050000;
            maxFurniture = 100;
            type = 0;
            lightPos[] = {-1.5,0,2};
        };

        class Land_i_House_Small_01_V2_F : Land_i_House_Small_01_V1_F{};
        class Land_i_House_Small_01_V3_F : Land_i_House_Small_01_V1_F{};

        class Land_i_House_Small_02_V1_F {
            price = 1000500;
            maxFurniture = 100;
            type = 0;
            lightPos[] = {2,0,2.4};
        };

        class Land_i_House_Small_02_V2_F : Land_i_House_Small_02_V1_F{};
        class Land_i_House_Small_02_V3_F : Land_i_House_Small_02_V1_F{};

        class Land_i_House_Small_03_V1_F {
            price = 1250000;
            maxFurniture = 100;
            type = 0;
            lightPos[] = {-3.3,1,2.5};
        };

        class Land_i_House_Small_03_V3_F : Land_i_House_Small_03_V1_F{};

        class Land_i_Stone_HouseSmall_V1_F {
            price = 750000;
            maxFurniture = 100;
            type = 0;
            lightPos[] = {0.90,2.3,4};
        };

        class Land_i_Stone_HouseSmall_V2_F : Land_i_Stone_HouseSmall_V1_F{};
        class Land_i_Stone_HouseSmall_V3_F : Land_i_Stone_HouseSmall_V1_F{};

        class Land_GarageShelter_01_F {
            price = 80000;
            maxFurniture = 0;
            type = 1;
            garageSpawnPos[] = {0.241684,-5.72266,-1.46744};
            garageSpawnDir = 90;
            lightPos[] = {0,0,2};
        };
    };

    class Shops {
        class example {
            price = 1;
            maxUniqueItems = 30;
        };
    };
};