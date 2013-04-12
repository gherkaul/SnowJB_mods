.class public Lcom/lge/remotecontrol/RemoteControlStatusBar;
.super Ljava/lang/Object;
.source "RemoteControlStatusBar.java"


# static fields
.field private static mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExpandedView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 2
    .parameter "context"
    .parameter "expanded"
    .parameter "phoneStatusBar"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/lge/remotecontrol/RemoteControlStatusBar;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/lge/remotecontrol/RemoteControlStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 20
    sput-object p3, Lcom/lge/remotecontrol/RemoteControlStatusBar;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 21
    const-string v0, "RemoteControlStatusBar"

    const-string v1, "Dump RemoteControlStatusBar onCreate!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method
