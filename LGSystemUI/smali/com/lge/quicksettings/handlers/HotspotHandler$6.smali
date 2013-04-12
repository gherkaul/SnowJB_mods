.class Lcom/lge/quicksettings/handlers/HotspotHandler$6;
.super Ljava/lang/Object;
.source "HotspotHandler.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/HotspotHandler;->makeDCMView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/HotspotHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/HotspotHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/HotspotHandler$6;->this$0:Lcom/lge/quicksettings/handlers/HotspotHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 460
    const/4 v0, 0x1

    return v0
.end method
