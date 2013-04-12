.class public Lcom/lge/systemui/CameraSoundScreenshot;
.super Ljava/lang/Object;
.source "CameraSoundScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;
    }
.end annotation


# instance fields
.field private mCameraSoundPlayers:[Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public playSound(I)V
    .locals 2
    .parameter "soundId"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/systemui/CameraSoundScreenshot;->mCameraSoundPlayers:[Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;

    iput-object v0, p0, Lcom/lge/systemui/CameraSoundScreenshot;->mCameraSoundPlayers:[Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/lge/systemui/CameraSoundScreenshot;->mCameraSoundPlayers:[Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/lge/systemui/CameraSoundScreenshot;->mCameraSoundPlayers:[Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;

    new-instance v1, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;

    invoke-direct {v1, p1}, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;-><init>(I)V

    aput-object v1, v0, p1

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/lge/systemui/CameraSoundScreenshot;->mCameraSoundPlayers:[Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->play()V

    .line 46
    return-void
.end method
