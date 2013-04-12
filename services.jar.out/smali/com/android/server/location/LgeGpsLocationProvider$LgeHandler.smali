.class final Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;
.super Landroid/os/Handler;
.source "LgeGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LgeGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LgeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LgeGpsLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 888
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LgeGpsLocationProvider;Lcom/android/server/location/LgeGpsLocationProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 888
    invoke-direct {p0, p1}, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 891
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 895
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_1

    .line 896
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/LgeGpsLocationProvider;->access$300(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/LgeGpsLocationProvider;->access$300(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 903
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_2

    .line 904
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/LgeGpsLocationProvider;->access$300(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 906
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/LgeGpsLocationProvider;->access$300(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 912
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->lgeGnssLockMode(I)Z
    invoke-static {v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->access$800(Lcom/android/server/location/LgeGpsLocationProvider;I)Z

    goto :goto_0

    .line 916
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->handleFmwExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    invoke-static {v1, v0, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->access$900(Lcom/android/server/location/LgeGpsLocationProvider;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 920
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->handleGpsXTRAEnable(I)Z
    invoke-static {v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->access$1000(Lcom/android/server/location/LgeGpsLocationProvider;I)Z

    goto :goto_0

    .line 924
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->lge_get_indicator_state()Z
    invoke-static {v0}, Lcom/android/server/location/LgeGpsLocationProvider;->access$1100(Lcom/android/server/location/LgeGpsLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/LgeGpsLocationProvider;->access$300(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 893
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xa -> :sswitch_5
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
    .end sparse-switch
.end method
