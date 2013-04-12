.class Lcom/lge/systemui/LGPhoneStatusBar$MiniComponentDBObserver;
.super Landroid/database/ContentObserver;
.source "LGPhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/LGPhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiniComponentDBObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/LGPhoneStatusBar;


# direct methods
.method public constructor <init>(Lcom/lge/systemui/LGPhoneStatusBar;)V
    .locals 1
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/lge/systemui/LGPhoneStatusBar$MiniComponentDBObserver;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    .line 445
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 446
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar$MiniComponentDBObserver;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBar;->mMusicControl:Lcom/lge/systemui/MusicControl;
    invoke-static {v0}, Lcom/lge/systemui/LGPhoneStatusBar;->access$900(Lcom/lge/systemui/LGPhoneStatusBar;)Lcom/lge/systemui/MusicControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/systemui/MusicControl;->onDBChange(Z)V

    .line 451
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar$MiniComponentDBObserver;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBar;->mFMRadio:Lcom/lge/systemui/FMRadio;
    invoke-static {v0}, Lcom/lge/systemui/LGPhoneStatusBar;->access$1000(Lcom/lge/systemui/LGPhoneStatusBar;)Lcom/lge/systemui/FMRadio;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/systemui/FMRadio;->onDBChange(Z)V

    .line 452
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar$MiniComponentDBObserver;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar$MiniComponentDBObserver;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBar;->mMusicControl:Lcom/lge/systemui/MusicControl;
    invoke-static {v1}, Lcom/lge/systemui/LGPhoneStatusBar;->access$900(Lcom/lge/systemui/LGPhoneStatusBar;)Lcom/lge/systemui/MusicControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/systemui/MusicControl;->isVisible()Z

    move-result v1

    #setter for: Lcom/lge/systemui/LGPhoneStatusBar;->mIsVisibleMiniComponent:Z
    invoke-static {v0, v1}, Lcom/lge/systemui/LGPhoneStatusBar;->access$1102(Lcom/lge/systemui/LGPhoneStatusBar;Z)Z

    .line 453
    return-void
.end method
