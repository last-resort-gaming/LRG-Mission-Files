class YAINA_MM {
    tag = "YAINA_MM";

    class Utils {
        file = "Functions\YAINA\Missions\Utils";
        class paraDrop {};
        class setupParadropActions {postInit = 1;};
        class openChute {};
    };
};

class YAINA_VEH {
    tag = "YAINA_VEH";

    class Vehicles {
        file = "Functions\YAINA\Vehicles";
        class dropKey {};
        class initVehicle {};
        class postInit {postInit = 1;};
        class takeKey {};
        class updateOwnership {};
        class updatePlayerActions {};
        class respawnPFH {};
        class preInit {preInit = 1;};
        class setupRopeDetachHandler {};
        class addRopeDetachHandler {};
        class addGetInHandler {};
        class getInMan {};
        class getMarkers {};
        class flip {};
    };

    class defaults {
        file = "Functions\YAINA\Vehicles\defaults";
        class initHeli {};
    };
};

class YAINA {
    tag = "YAINA";

    class General {
        file = "Functions\YAINA\General";
        class diarySetup {postInit = 1;};
        class addEditableObjects {};
        class killedHint {postInit = 1;};
        class formatDuration {};
        class showFPS {postInit = 1;};
        class baseProtection {postInit = 1;};
        class hintC {};
        class fadeOutAndExecute {};
        class crewNames {postInit = 1;};
        class testTraits {};
        class setUnitTrait {};
        class isUAV {};
        class inBaseProtectionArea {};
        class settings {preInit = 1;};
        class getNearestPlayer {};
        class AOPos {};
    };
};

class YAINA_AD {
    tag = "YAINA_AD";

    class General {
        file = "Functions\YAINA\AirDefence";
        class postInit {postInit = 1;};
        class activateAirDefence {};
    };
};

class YAINA_ARSENAL {
    tag = "YAINA_ARSENAL";

    class General {
        file = "Functions\YAINA\Arsenal\General";
        class initArsenal {};
        class initArsenal3CB {};
        class preInit {preInit = 1;};
        class postInit {postInit = 1;};
        class enforceGear {};
        class removeItem {};
    };
};

class YAINA_TABLET {

    class Init {
        file = "functions\YAINA\Tablet\Init";
        class postInit {postInit = 1;};
    };

    class General {
        file = "functions\YAINA\Tablet\General";
        class clickMainMenu {};
        class displayPage {};
        class formatDuration {};
    };

    class Loadout {
        file = "functions\YAINA\Tablet\Loadout";
        class clickLoadoutButton {};
        class clickLoadoutQuantity {};
        class populateLoadout {};
        class selectionChangedPlayer {};
        class createLoadout {};
        class refreshLoadoutPage {};
    };

    class Rewards {
        file = "functions\YAINA\Tablet\Rewards";
        class refreshRewardsPage {};
        class clickRewardsButton {};
        class selectionChangedRewards {};
        class clickOrderReward {};
        class clickCancelReward {};
        class rewardsEH {postInit = 1;};
        class getSpawnPoint {};
        class provisionReward {};
    };

    class Message {
        file = "functions\YAINA\Tablet\Message";
        class refreshMessagePage {};
    };

    class Player {
        file = "functions\YAINA\Tablet\Player";
        class openTablet {};
    };

    class Spawns {
        file = "functions\YAINA\Tablet\Spawns";
        class createSupplyDrop {};
        class createMedicalContainer {};
        class createVehicleAmmo {};
        class createVehicleRepair {};
        class createFuelContainer {};
        class setDroppable {};
    };
};

class YAINA_CMD {
    tag = "YAINA_CMD";

    class Core {
        file = "Functions\YAINA\Commands\Core";
        class postInit {postInit = 1;};
    };

    class Commands {
        file = "Functions\YAINA\Commands\Commands";
        class stable {};
    };

    class Messages {
        file = "Functions\YAINA\Commands\Messages";
        class micmsg {};
    };
};

class YAINA_UAV {

    class General {
        file = "Functions\YAINA\UAVRestrictions";
        class postInit {postInit = 1;};
        class respawn {};
        class rescan {};
    };
};

class YAINA_CHAIRS {

    class General {
        file = "Functions\YAINA\Chairs";
        class postInit {postInit = 1;};
        class initChair {};
    };
};

class YAINA_ZEUS {
    tag = "YAINA_ZEUS";

    class General {
        file = "Functions\YAINA\ZeusRestrictions";
        class postInit {postInit = 1;};
        class startPFH {};
        class zeusPinged {};
    };
};

