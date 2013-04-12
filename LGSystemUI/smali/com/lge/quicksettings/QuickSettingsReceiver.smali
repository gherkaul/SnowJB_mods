.class public Lcom/lge/quicksettings/QuickSettingsReceiver;
.super Ljava/lang/Object;
.source "QuickSettingsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;
    }
.end annotation


# instance fields
.field public mAction:[Ljava/lang/String;

.field public mHandler:Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public getAction()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsReceiver;->mAction:[Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsReceiver;->mHandler:Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setAction([Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public setAction([Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/lge/quicksettings/QuickSettingsReceiver;->mAction:[Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setHandler(Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lge/quicksettings/QuickSettingsReceiver;->mHandler:Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;

    .line 27
    return-void
.end method
