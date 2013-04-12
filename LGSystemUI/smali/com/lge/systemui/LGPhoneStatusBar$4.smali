.class Lcom/lge/systemui/LGPhoneStatusBar$4;
.super Ljava/lang/Object;
.source "LGPhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemui/LGPhoneStatusBar;->showExpandableNotificationGuide(ZLcom/android/systemui/statusbar/NotificationData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/LGPhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/lge/systemui/LGPhoneStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/lge/systemui/LGPhoneStatusBar$4;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar$4;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    invoke-virtual {v0}, Lcom/lge/systemui/LGPhoneStatusBar;->hideExpandableNotificationGuide()V

    .line 352
    return-void
.end method
