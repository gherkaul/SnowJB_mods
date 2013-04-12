.class Lcom/lge/debug/DebugAgent$2;
.super Ljava/lang/Object;
.source "DebugAgent.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/debug/DebugAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/debug/DebugAgent;


# direct methods
.method constructor <init>(Lcom/lge/debug/DebugAgent;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lge/debug/DebugAgent$2;->this$0:Lcom/lge/debug/DebugAgent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$2;->this$0:Lcom/lge/debug/DebugAgent;

    invoke-static {p2}, Lcom/lge/debug/IDebugDisplay_Svc$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/debug/IDebugDisplay_Svc;

    move-result-object v1

    #setter for: Lcom/lge/debug/DebugAgent;->mDDSvc:Lcom/lge/debug/IDebugDisplay_Svc;
    invoke-static {v0, v1}, Lcom/lge/debug/DebugAgent;->access$302(Lcom/lge/debug/DebugAgent;Lcom/lge/debug/IDebugDisplay_Svc;)Lcom/lge/debug/IDebugDisplay_Svc;

    .line 118
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 120
    return-void
.end method
