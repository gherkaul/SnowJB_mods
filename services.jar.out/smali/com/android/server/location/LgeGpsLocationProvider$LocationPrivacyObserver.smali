.class Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;
.super Ljava/lang/Object;
.source "LgeGpsLocationProvider.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LgeGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationPrivacyObserver"
.end annotation


# instance fields
.field private firstRun:Z

.field private oldAgpsSetting:Z

.field private oldGpsSetting:Z

.field private oldNetworkProvSetting:Z

.field final synthetic this$0:Lcom/android/server/location/LgeGpsLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1082
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    iput-boolean v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;->oldGpsSetting:Z

    .line 1084
    iput-boolean v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;->oldNetworkProvSetting:Z

    .line 1085
    iput-boolean v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;->oldAgpsSetting:Z

    .line 1086
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;->firstRun:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LgeGpsLocationProvider;Lcom/android/server/location/LgeGpsLocationProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1082
    invoke-direct {p0, p1}, Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 10
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 1089
    const/4 v5, 0x0

    .line 1090
    .local v5, providerChanged:Z
    const/4 v0, 0x0

    .line 1093
    .local v0, agpsEnabledChanged:Z
    check-cast p1, Landroid/content/ContentQueryMap;

    .end local p1
    invoke-virtual {p1}, Landroid/content/ContentQueryMap;->getRows()Ljava/util/Map;

    move-result-object v3

    .line 1094
    .local v3, kvs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1095
    const-string v8, "LgeGpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in Settings.Secure.LOCATION_PROVIDERS_ALLOWED - "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v7, "location_providers_allowed"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    invoke-virtual {v7}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const-string v7, "location_providers_allowed"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    invoke-virtual {v7}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1098
    .local v6, providers:Ljava/lang/String;
    const-string v7, "gps"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1099
    .local v2, gpsSetting:Z
    const-string v7, "network"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1100
    .local v4, networkProvSetting:Z
    const-string v7, "assisted_gps_enabled"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    invoke-virtual {v7}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1103
    .local v1, agpsSetting:Z
    const-string v7, "LgeGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SettingsObserver.update invoked and setting values. Gps:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " GNP:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Agps:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-boolean v7, p0, Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;->oldGpsSetting:Z

    if-ne v7, v2, :cond_0

    iget-boolean v7, p0, Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;->oldNetworkProvSetting:Z

    if-eq v7, v4, :cond_1

    .line 1109
    :cond_0
    const/4 v5, 0x1

    .line 1112
    :cond_1
    iget-boolean v7, p0, Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;->oldAgpsSetting:Z

    if-eq v7, v1, :cond_2

    .line 1113
    const/4 v0, 0x1

    .line 1116
    :cond_2
    iget-boolean v7, p0, Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;->firstRun:Z

    if-eqz v7, :cond_3

    .line 1117
    const/4 v5, 0x1

    .line 1118
    const/4 v0, 0x1

    .line 1119
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;->firstRun:Z

    .line 1122
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;->oldGpsSetting:Z

    .line 1123
    iput-boolean v4, p0, Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;->oldNetworkProvSetting:Z

    .line 1124
    iput-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;->oldAgpsSetting:Z

    .line 1129
    .end local v1           #agpsSetting:Z
    .end local v2           #gpsSetting:Z
    .end local v4           #networkProvSetting:Z
    .end local v6           #providers:Ljava/lang/String;
    :cond_4
    if-eqz v5, :cond_5

    iget-object v7, p0, Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->updateGpsLockMode()V
    invoke-static {v7}, Lcom/android/server/location/LgeGpsLocationProvider;->access$1500(Lcom/android/server/location/LgeGpsLocationProvider;)V

    .line 1132
    :cond_5
    if-eqz v0, :cond_6

    iget-object v7, p0, Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->updateGpsXTRAEnable()V
    invoke-static {v7}, Lcom/android/server/location/LgeGpsLocationProvider;->access$1600(Lcom/android/server/location/LgeGpsLocationProvider;)V

    .line 1133
    :cond_6
    return-void
.end method
