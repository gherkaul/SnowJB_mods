.class Lcom/lge/systemui/LGPhoneStatusBar$1;
.super Landroid/os/Handler;
.source "LGPhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/LGPhoneStatusBar;
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
    .line 87
    iput-object p1, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v2, 0x37

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBar;->mCurToastGravity:I
    invoke-static {v0}, Lcom/lge/systemui/LGPhoneStatusBar;->access$000(Lcom/lge/systemui/LGPhoneStatusBar;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_0

    .line 92
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/lge/systemui/LGPhoneStatusBar;->mCurToastGravity:I
    invoke-static {v0, v1}, Lcom/lge/systemui/LGPhoneStatusBar;->access$002(Lcom/lge/systemui/LGPhoneStatusBar;I)I

    .line 107
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBar;->mToastView:Landroid/view/View;
    invoke-static {v1}, Lcom/lge/systemui/LGPhoneStatusBar;->access$300(Lcom/lge/systemui/LGPhoneStatusBar;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBar;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/lge/systemui/LGPhoneStatusBar;->access$100(Lcom/lge/systemui/LGPhoneStatusBar;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBar;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/systemui/LGPhoneStatusBar;->access$300(Lcom/lge/systemui/LGPhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    const/high16 v2, 0x10a

    iget-object v3, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    iget-object v3, v3, Lcom/lge/systemui/LGPhoneStatusBar;->mToastListener:Landroid/view/animation/Animation$AnimationListener;

    #calls: Lcom/lge/systemui/LGPhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/lge/systemui/LGPhoneStatusBar;->access$400(Lcom/lge/systemui/LGPhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    const/4 v1, 0x1

    #calls: Lcom/lge/systemui/LGPhoneStatusBar;->setToastVisibility(Z)V
    invoke-static {v0, v1}, Lcom/lge/systemui/LGPhoneStatusBar;->access$500(Lcom/lge/systemui/LGPhoneStatusBar;Z)V

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBar;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/lge/systemui/LGPhoneStatusBar;->access$100(Lcom/lge/systemui/LGPhoneStatusBar;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 95
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBar;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/lge/systemui/LGPhoneStatusBar;->access$100(Lcom/lge/systemui/LGPhoneStatusBar;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBar;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/systemui/LGPhoneStatusBar;->access$200(Lcom/lge/systemui/LGPhoneStatusBar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 98
    :pswitch_2
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBar;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/lge/systemui/LGPhoneStatusBar;->access$100(Lcom/lge/systemui/LGPhoneStatusBar;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x57

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 99
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBar;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/lge/systemui/LGPhoneStatusBar;->access$100(Lcom/lge/systemui/LGPhoneStatusBar;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBar;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/systemui/LGPhoneStatusBar;->access$200(Lcom/lge/systemui/LGPhoneStatusBar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 102
    :pswitch_3
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBar;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/lge/systemui/LGPhoneStatusBar;->access$100(Lcom/lge/systemui/LGPhoneStatusBar;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 103
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBar;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/lge/systemui/LGPhoneStatusBar;->access$100(Lcom/lge/systemui/LGPhoneStatusBar;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBar;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/systemui/LGPhoneStatusBar;->access$200(Lcom/lge/systemui/LGPhoneStatusBar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_1

    .line 113
    :pswitch_4
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBar;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/systemui/LGPhoneStatusBar;->access$300(Lcom/lge/systemui/LGPhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    const v2, 0x10a0001

    iget-object v3, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    iget-object v3, v3, Lcom/lge/systemui/LGPhoneStatusBar;->mToastListener:Landroid/view/animation/Animation$AnimationListener;

    #calls: Lcom/lge/systemui/LGPhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/lge/systemui/LGPhoneStatusBar;->access$400(Lcom/lge/systemui/LGPhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    const/4 v1, 0x0

    #calls: Lcom/lge/systemui/LGPhoneStatusBar;->setToastVisibility(Z)V
    invoke-static {v0, v1}, Lcom/lge/systemui/LGPhoneStatusBar;->access$500(Lcom/lge/systemui/LGPhoneStatusBar;Z)V

    goto/16 :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x406
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 92
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
