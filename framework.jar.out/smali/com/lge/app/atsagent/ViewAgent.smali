.class Lcom/lge/app/atsagent/ViewAgent;
.super Ljava/lang/Object;
.source "ViewAgent.java"

# interfaces
.implements Lcom/lge/app/atsagent/IViewAgent;


# static fields
.field private static final avwObject:Ljava/lang/String; = "avwObject"

.field private static final endWaiting:Ljava/lang/String; = "Invoking finished"

.field private static final interruptEx:Ljava/lang/String; = "Interrupt exception"

.field private static final notApplicable:Ljava/lang/String; = "Action is not applicable for this type of view"

.field private static final startWaiting:Ljava/lang/String; = "Start waiting"

.field private static final tag:Ljava/lang/String; = "ViewAgent"

.field private static typeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionResult:I

.field private bindContext:Landroid/content/Context;

.field public callback:Lcom/lge/app/atsagent/IEta2ServiceCallback;

.field public connection:Landroid/content/ServiceConnection;

.field private fullList:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private handlerUI:Landroid/os/Handler;

.field private isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private locker:Lcom/lge/app/atsagent/UiElement;

.field private methodError:Ljava/lang/String;

.field private methodLocker:Lcom/lge/app/atsagent/MethodDescription;

.field private methodResult:Ljava/lang/String;

.field private rootView:Landroid/view/View;

.field private scriptResult:Lcom/lge/app/atsagent/ActionResponse;

.field private service:Lcom/lge/app/atsagent/IEta2Service;

.field private viewHolderType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 869
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter "rootView"
    .parameter "viewHolderType"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/lge/app/atsagent/ViewAgent$1;

    invoke-direct {v0, p0}, Lcom/lge/app/atsagent/ViewAgent$1;-><init>(Lcom/lge/app/atsagent/ViewAgent;)V

    iput-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->callback:Lcom/lge/app/atsagent/IEta2ServiceCallback;

    .line 222
    new-instance v0, Lcom/lge/app/atsagent/ViewAgent$2;

    invoke-direct {v0, p0}, Lcom/lge/app/atsagent/ViewAgent$2;-><init>(Lcom/lge/app/atsagent/ViewAgent;)V

    iput-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->connection:Landroid/content/ServiceConnection;

    .line 360
    iput-object v1, p0, Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;

    .line 361
    iput-object v1, p0, Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;

    .line 362
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->methodError:Ljava/lang/String;

    .line 363
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->methodResult:Ljava/lang/String;

    .line 364
    new-instance v0, Lcom/lge/app/atsagent/ActionResponse;

    invoke-direct {v0}, Lcom/lge/app/atsagent/ActionResponse;-><init>()V

    iput-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;

    .line 365
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/app/atsagent/ViewAgent;->actionResult:I

    .line 366
    new-instance v0, Lcom/lge/app/atsagent/ViewAgent$3;

    invoke-direct {v0, p0}, Lcom/lge/app/atsagent/ViewAgent$3;-><init>(Lcom/lge/app/atsagent/ViewAgent;)V

    iput-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->handlerUI:Landroid/os/Handler;

    .line 860
    iput-object v1, p0, Lcom/lge/app/atsagent/ViewAgent;->rootView:Landroid/view/View;

    .line 861
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->viewHolderType:Ljava/lang/String;

    .line 862
    iput-object v1, p0, Lcom/lge/app/atsagent/ViewAgent;->service:Lcom/lge/app/atsagent/IEta2Service;

    .line 863
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 865
    iput-object v1, p0, Lcom/lge/app/atsagent/ViewAgent;->bindContext:Landroid/content/Context;

    .line 866
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->fullList:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    iput-object p1, p0, Lcom/lge/app/atsagent/ViewAgent;->rootView:Landroid/view/View;

    .line 41
    iput-object p2, p0, Lcom/lge/app/atsagent/ViewAgent;->viewHolderType:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->bindContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/lge/app/atsagent/ViewAgent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lge/app/atsagent/ViewAgent;->hasPermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lge/app/atsagent/ViewAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->fullList:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/IEta2Service;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->service:Lcom/lge/app/atsagent/IEta2Service;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/lge/app/atsagent/ViewAgent;Lcom/lge/app/atsagent/IEta2Service;)Lcom/lge/app/atsagent/IEta2Service;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lge/app/atsagent/ViewAgent;->service:Lcom/lge/app/atsagent/IEta2Service;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->viewHolderType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/app/atsagent/ViewAgent;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/lge/app/atsagent/ViewAgent;->getMainRootView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/lge/app/atsagent/ViewAgent;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/view/View;Ljava/lang/Class;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/lge/app/atsagent/ViewAgent;->canCast(Landroid/view/View;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/lge/app/atsagent/ViewAgent;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->bindContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/app/atsagent/ViewAgent;Lcom/lge/app/atsagent/UiElement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/lge/app/atsagent/ViewAgent;->getAll(Lcom/lge/app/atsagent/UiElement;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/lge/app/atsagent/ViewAgent;Lcom/lge/app/atsagent/UiElement;ZZ)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/app/atsagent/ViewAgent;->getMenu(Lcom/lge/app/atsagent/UiElement;ZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lge/app/atsagent/ViewAgent;Lcom/lge/app/atsagent/UiElement;ZZ)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/app/atsagent/ViewAgent;->getPopup(Lcom/lge/app/atsagent/UiElement;ZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lge/app/atsagent/ViewAgent;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/UiElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lge/app/atsagent/ViewAgent;Landroid/view/View;Lcom/lge/app/atsagent/UiElement;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/app/atsagent/ViewAgent;->parseView(Landroid/view/View;Lcom/lge/app/atsagent/UiElement;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/lge/app/atsagent/ViewAgent;Lcom/lge/app/atsagent/UiElement;)Lcom/lge/app/atsagent/UiElement;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lge/app/atsagent/ViewAgent;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->handlerUI:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/app/atsagent/ViewAgent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/lge/app/atsagent/ViewAgent;->actionResult:I

    return v0
.end method

.method static synthetic access$402(Lcom/lge/app/atsagent/ViewAgent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/lge/app/atsagent/ViewAgent;->actionResult:I

    return p1
.end method

.method static synthetic access$500(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->methodError:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lge/app/atsagent/ViewAgent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lge/app/atsagent/ViewAgent;->methodError:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lge/app/atsagent/ViewAgent;Lcom/lge/app/atsagent/MethodDescription;)Lcom/lge/app/atsagent/MethodDescription;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;

    return-object p1
.end method

.method static synthetic access$700(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->methodResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lge/app/atsagent/ViewAgent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lge/app/atsagent/ViewAgent;->methodResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/app/atsagent/ViewAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static canCast(Landroid/view/View;Ljava/lang/Class;)Z
    .locals 1
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 780
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 781
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .line 783
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static fillTypeMap()V
    .locals 3

    .prologue
    .line 807
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    .line 809
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/Button;

    const-string v2, "avwButton"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/ZoomButton;

    const-string v2, "avwButton"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/ImageButton;

    const-string v2, "avwImageButton"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/CheckBox;

    const-string v2, "avwCheckBox"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/CheckedTextView;

    const-string v2, "avwCheckedTextView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/DatePicker;

    const-string v2, "avwDatePicker"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/EditText;

    const-string v2, "avwEdit"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/AutoCompleteTextView;

    const-string v2, "avwEdit"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/GridView;

    const-string v2, "GridView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "avwImageView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/QuickContactBadge;

    const-string v2, "avwImageView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/ListView;

    const-string v2, "avwListView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/ExpandableListView;

    const-string v2, "avwListView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/AbsListView;

    const-string v2, "avwListView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/ProgressBar;

    const-string v2, "avwProgressBar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/RatingBar;

    const-string v2, "avwRatingBar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/SeekBar;

    const-string v2, "avwSeekBar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/RadioButton;

    const-string v2, "avwRadioButton"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/ToggleButton;

    const-string v2, "avwToggleButton"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/ScrollView;

    const-string v2, "avwScrollView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/Spinner;

    const-string v2, "avwSpinner"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/AbsSpinner;

    const-string v2, "avwSpinner"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/TextView;

    const-string v2, "avwStaticText"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/TabWidget;

    const-string v2, "avwTabCtrl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/view/Menu;

    const-string v2, "avwIconMenu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/Chronometer;

    const-string v2, "avwChronometer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/FrameLayout;

    const-string v2, "avwSubWindow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "avwSubWindow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "avwSubWindow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/app/Dialog;

    const-string v2, "avwDialog"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/BaseAdapter;

    const-string v2, "avwBaseAdapter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/BaseExpandableListAdapter;

    const-string v2, "avwBaseExpandableListAdapter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/CursorAdapter;

    const-string v2, "avwCursorAdapter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/CursorTreeAdapter;

    const-string v2, "avwCursorTreeAdapter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/SimpleAdapter;

    const-string v2, "avwSimpleAdapter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/SimpleCursorAdapter;

    const-string v2, "avwSimpleCursorAdapter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/SimpleCursorTreeAdapter;

    const-string v2, "avwSimpleCursorTreeAdapter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Landroid/widget/SimpleExpandableListAdapter;

    const-string v2, "avwSimpleExpandableListAdapter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Object;

    const-string v2, "avwObject"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    return-void
.end method

.method private static findView(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .parameter "v"
    .parameter "hash"

    .prologue
    const/4 v3, 0x0

    .line 737
    if-nez p0, :cond_1

    move-object p0, v3

    .line 747
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 739
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 741
    const-class v2, Landroid/view/ViewGroup;

    invoke-static {p0, v2}, Lcom/lge/app/atsagent/ViewAgent;->canCast(Landroid/view/View;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 742
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    move-object v2, p0

    .line 743
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/lge/app/atsagent/ViewAgent;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 744
    .local v1, result:Landroid/view/View;
    if-eqz v1, :cond_2

    move-object p0, v1

    .line 745
    goto :goto_0

    .line 742
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #result:Landroid/view/View;
    :cond_3
    move-object p0, v3

    .line 747
    goto :goto_0
.end method

.method private getAll(Lcom/lge/app/atsagent/UiElement;Z)V
    .locals 10
    .parameter "mainRoot"
    .parameter "fullListView"

    .prologue
    .line 704
    const-string v7, "ViewAgent"

    const-string v8, "Grabbing All UI"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-direct {p0}, Lcom/lge/app/atsagent/ViewAgent;->getRoots()[Landroid/view/ViewRootImpl;

    move-result-object v4

    .line 706
    .local v4, roots:[Landroid/view/ViewRootImpl;
    if-eqz v4, :cond_0

    .line 707
    move-object v0, v4

    .local v0, arr$:[Landroid/view/ViewRootImpl;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 708
    .local v3, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v6

    .line 709
    .local v6, v:Landroid/view/View;
    const-string v7, "ViewAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Root: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Hash : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    new-instance v5, Lcom/lge/app/atsagent/UiElement;

    invoke-direct {v5, p1}, Lcom/lge/app/atsagent/UiElement;-><init>(Lcom/lge/app/atsagent/UiElement;)V

    .line 711
    .local v5, subRoot:Lcom/lge/app/atsagent/UiElement;
    invoke-direct {p0, v6, v5, p2}, Lcom/lge/app/atsagent/ViewAgent;->parseView(Landroid/view/View;Lcom/lge/app/atsagent/UiElement;Z)Z

    .line 712
    iget-object v7, p1, Lcom/lge/app/atsagent/UiElement;->children:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 715
    .end local v0           #arr$:[Landroid/view/ViewRootImpl;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #root:Landroid/view/ViewRootImpl;
    .end local v5           #subRoot:Lcom/lge/app/atsagent/UiElement;
    .end local v6           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private static getChecked(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 788
    :try_start_0
    const-class v1, Landroid/widget/Checkable;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    .line 789
    .local v0, cb:Landroid/widget/Checkable;
    if-eqz v0, :cond_0

    .line 790
    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 793
    .end local v0           #cb:Landroid/widget/Checkable;
    :goto_0
    return v1

    .line 791
    :catch_0
    move-exception v1

    .line 793
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getListAdapter(Landroid/widget/AbsListView;)Landroid/widget/ListAdapter;
    .locals 7
    .parameter "alv"

    .prologue
    const/4 v5, 0x0

    .line 332
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    .line 333
    .local v2, la:Landroid/widget/ListAdapter;
    if-eqz v2, :cond_0

    .line 357
    .end local v2           #la:Landroid/widget/ListAdapter;
    :goto_0
    return-object v2

    .line 335
    .restart local v2       #la:Landroid/widget/ListAdapter;
    :cond_0
    const-string v4, "ViewAgent"

    const-string v6, "Standard ListAdapter is NULL"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 337
    .local v0, ctx:Landroid/content/Context;
    if-nez v0, :cond_1

    move-object v2, v5

    .line 338
    goto :goto_0

    .line 340
    :cond_1
    instance-of v4, v0, Landroid/app/ListActivity;

    if-eqz v4, :cond_2

    .line 341
    const-string v4, "ViewAgent"

    const-string v5, "Context is ListActivity"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    check-cast v0, Landroid/app/ListActivity;

    .end local v0           #ctx:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    goto :goto_0

    .line 344
    .restart local v0       #ctx:Landroid/content/Context;
    :cond_2
    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_4

    .line 345
    const-string v4, "ViewAgent"

    const-string v6, "Context is Activity"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    .line 346
    check-cast v3, Landroid/app/Activity;

    .line 347
    .local v3, parent:Landroid/app/Activity;
    :goto_1
    if-eqz v3, :cond_4

    .line 348
    instance-of v4, v3, Landroid/app/TabActivity;

    if-eqz v4, :cond_3

    move-object v4, v3

    .line 349
    check-cast v4, Landroid/app/TabActivity;

    invoke-virtual {v4}, Landroid/app/TabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 351
    .local v1, current:Landroid/app/Activity;
    instance-of v4, v1, Landroid/app/ListActivity;

    if-eqz v4, :cond_3

    .line 352
    check-cast v1, Landroid/app/ListActivity;

    .end local v1           #current:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    goto :goto_0

    .line 354
    :cond_3
    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    goto :goto_1

    .end local v3           #parent:Landroid/app/Activity;
    :cond_4
    move-object v2, v5

    .line 357
    goto :goto_0
.end method

.method private getMainRootView(I)Landroid/view/View;
    .locals 4
    .parameter "target"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 657
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 658
    invoke-direct {p0, v3, v1, v2}, Lcom/lge/app/atsagent/ViewAgent;->getMenu(Lcom/lge/app/atsagent/UiElement;ZZ)Landroid/view/View;

    move-result-object v0

    .line 661
    :goto_0
    return-object v0

    .line 659
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 660
    invoke-direct {p0, v3, v1, v2}, Lcom/lge/app/atsagent/ViewAgent;->getPopup(Lcom/lge/app/atsagent/UiElement;ZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->rootView:Landroid/view/View;

    goto :goto_0
.end method

.method private getMenu(Lcom/lge/app/atsagent/UiElement;ZZ)Landroid/view/View;
    .locals 11
    .parameter "menuRoot"
    .parameter "fullListView"
    .parameter "justFind"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 679
    const-string v8, "ViewAgent"

    const-string v9, "Grabbing menu"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-direct {p0}, Lcom/lge/app/atsagent/ViewAgent;->getRoots()[Landroid/view/ViewRootImpl;

    move-result-object v4

    .line 682
    .local v4, roots:[Landroid/view/ViewRootImpl;
    if-eqz v4, :cond_4

    .line 683
    move-object v0, v4

    .local v0, arr$:[Landroid/view/ViewRootImpl;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 684
    .local v3, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v5

    .line 685
    .local v5, v:Landroid/view/View;
    instance-of v8, v5, Landroid/view/ViewGroup;

    if-nez v8, :cond_1

    .line 683
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v5

    .line 687
    check-cast v6, Landroid/view/ViewGroup;

    .line 688
    .local v6, vg:Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 690
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Lcom/android/internal/view/menu/IconMenuView;

    if-nez v8, :cond_2

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Lcom/android/internal/view/menu/ExpandedMenuView;

    if-eqz v8, :cond_0

    .line 692
    :cond_2
    if-eqz p3, :cond_3

    .line 700
    .end local v0           #arr$:[Landroid/view/ViewRootImpl;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #root:Landroid/view/ViewRootImpl;
    .end local v5           #v:Landroid/view/View;
    .end local v6           #vg:Landroid/view/ViewGroup;
    :goto_1
    return-object v5

    .line 694
    .restart local v0       #arr$:[Landroid/view/ViewRootImpl;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #root:Landroid/view/ViewRootImpl;
    .restart local v5       #v:Landroid/view/View;
    .restart local v6       #vg:Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8, p1, p2}, Lcom/lge/app/atsagent/ViewAgent;->parseView(Landroid/view/View;Lcom/lge/app/atsagent/UiElement;Z)Z

    .line 695
    const-string v8, "ViewAgent"

    const-string v9, "Menu parsed successfully"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 696
    goto :goto_1

    .end local v0           #arr$:[Landroid/view/ViewRootImpl;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #root:Landroid/view/ViewRootImpl;
    .end local v5           #v:Landroid/view/View;
    .end local v6           #vg:Landroid/view/ViewGroup;
    :cond_4
    move-object v5, v7

    .line 700
    goto :goto_1
.end method

.method private getPopup(Lcom/lge/app/atsagent/UiElement;ZZ)Landroid/view/View;
    .locals 9
    .parameter "popupRoot"
    .parameter "fullListView"
    .parameter "justFind"

    .prologue
    const/4 v6, 0x0

    .line 718
    const-string v7, "ViewAgent"

    const-string v8, "Grabbing pop-up"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-direct {p0}, Lcom/lge/app/atsagent/ViewAgent;->getRoots()[Landroid/view/ViewRootImpl;

    move-result-object v4

    .line 721
    .local v4, roots:[Landroid/view/ViewRootImpl;
    if-eqz v4, :cond_2

    .line 722
    move-object v0, v4

    .local v0, arr$:[Landroid/view/ViewRootImpl;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 723
    .local v3, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v5

    .line 724
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PopupWindow"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 725
    if-eqz p3, :cond_0

    .line 732
    .end local v0           #arr$:[Landroid/view/ViewRootImpl;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #root:Landroid/view/ViewRootImpl;
    .end local v5           #v:Landroid/view/View;
    :goto_1
    return-object v5

    .line 727
    .restart local v0       #arr$:[Landroid/view/ViewRootImpl;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #root:Landroid/view/ViewRootImpl;
    .restart local v5       #v:Landroid/view/View;
    :cond_0
    invoke-direct {p0, v5, p1, p2}, Lcom/lge/app/atsagent/ViewAgent;->parseView(Landroid/view/View;Lcom/lge/app/atsagent/UiElement;Z)Z

    move-object v5, v6

    .line 728
    goto :goto_1

    .line 722
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #arr$:[Landroid/view/ViewRootImpl;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #root:Landroid/view/ViewRootImpl;
    .end local v5           #v:Landroid/view/View;
    :cond_2
    move-object v5, v6

    .line 732
    goto :goto_1
.end method

.method private getRoots()[Landroid/view/ViewRootImpl;
    .locals 9

    .prologue
    .line 665
    const/4 v4, 0x0

    .line 667
    .local v4, roots:[Landroid/view/ViewRootImpl;
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    .line 668
    .local v5, wm:Landroid/view/WindowManagerImpl;
    const-string v6, "android.view.WindowManagerImpl"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 669
    .local v1, clazz:Ljava/lang/Class;
    const-string/jumbo v6, "mRoots"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 670
    .local v3, f:Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 671
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/view/ViewRootImpl;

    move-object v0, v6

    check-cast v0, [Landroid/view/ViewRootImpl;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .end local v1           #clazz:Ljava/lang/Class;
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v5           #wm:Landroid/view/WindowManagerImpl;
    :goto_0
    return-object v4

    .line 672
    :catch_0
    move-exception v2

    .line 673
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "ViewAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " occured: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getUserType(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 797
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 798
    invoke-static {}, Lcom/lge/app/atsagent/ViewAgent;->fillTypeMap()V

    .line 800
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 801
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 803
    :cond_1
    if-nez p0, :cond_2

    const-string v0, "avwObject"

    :goto_1
    return-object v0

    :cond_2
    sget-object v0, Lcom/lge/app/atsagent/ViewAgent;->typeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method

.method static hasHint(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 769
    :try_start_0
    const-class v2, Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 770
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 771
    const-class v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 776
    .end local v0           #tv:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return v1

    .line 773
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private hasPermission()Z
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->bindContext:Landroid/content/Context;

    const-string v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static hasText(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 757
    :try_start_0
    const-class v2, Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 758
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 759
    const-class v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 764
    .end local v0           #tv:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return v1

    .line 761
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private parseView(Landroid/view/View;Lcom/lge/app/atsagent/UiElement;Z)Z
    .locals 14
    .parameter "view"
    .parameter "element"
    .parameter "fullListView"

    .prologue
    .line 247
    if-nez p1, :cond_0

    const/4 v9, 0x0

    .line 327
    :goto_0
    return v9

    .line 249
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/lge/app/atsagent/UiElement;->typeName:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/app/atsagent/ViewAgent;->getUserType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/lge/app/atsagent/UiElement;->userType:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    move-object/from16 v0, p2

    iput v9, v0, Lcom/lge/app/atsagent/UiElement;->hash:I

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    move-object/from16 v0, p2

    iput v9, v0, Lcom/lge/app/atsagent/UiElement;->id:I

    .line 254
    const/4 v9, 0x2

    new-array v6, v9, [I

    .line 255
    .local v6, location:[I
    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 256
    const/4 v9, 0x0

    aget v9, v6, v9

    move-object/from16 v0, p2

    iput v9, v0, Lcom/lge/app/atsagent/UiElement;->x:I

    .line 257
    const/4 v9, 0x1

    aget v9, v6, v9

    move-object/from16 v0, p2

    iput v9, v0, Lcom/lge/app/atsagent/UiElement;->y:I

    .line 259
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 260
    .local v7, rect:Landroid/graphics/Rect;
    invoke-virtual {p1, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 261
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    move-object/from16 v0, p2

    iput v9, v0, Lcom/lge/app/atsagent/UiElement;->width:I

    .line 262
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    move-object/from16 v0, p2

    iput v9, v0, Lcom/lge/app/atsagent/UiElement;->height:I

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v9

    move-object/from16 v0, p2

    iput-boolean v9, v0, Lcom/lge/app/atsagent/UiElement;->enabled:Z

    .line 266
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/lge/app/atsagent/UiElement;->fields:Ljava/util/List;

    new-instance v11, Lcom/lge/app/atsagent/UiElement$Field;

    const-string v12, "boolean"

    const-string/jumbo v13, "shown"

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string/jumbo v9, "true"

    :goto_1
    invoke-direct {v11, v12, v13, v9}, Lcom/lge/app/atsagent/UiElement$Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    instance-of v9, p1, Landroid/widget/TabHost;

    if-eqz v9, :cond_1

    .line 270
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/lge/app/atsagent/UiElement;->fields:Ljava/util/List;

    new-instance v11, Lcom/lge/app/atsagent/UiElement$Field;

    const-string v12, "int"

    const-string v13, "CurrentTab"

    const-class v9, Landroid/widget/TabHost;

    invoke-virtual {v9, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TabHost;

    invoke-virtual {v9}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v12, v13, v9}, Lcom/lge/app/atsagent/UiElement$Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_1
    invoke-static {p1}, Lcom/lge/app/atsagent/ViewAgent;->hasText(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 273
    const-class v9, Landroid/widget/TextView;

    invoke-virtual {v9, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 274
    .local v8, tv:Landroid/widget/TextView;
    if-eqz v8, :cond_2

    .line 275
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/lge/app/atsagent/UiElement;->fields:Ljava/util/List;

    new-instance v10, Lcom/lge/app/atsagent/UiElement$Field;

    const-string/jumbo v11, "string"

    const-string/jumbo v12, "text"

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/lge/app/atsagent/UiElement$Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v8           #tv:Landroid/widget/TextView;
    :cond_2
    invoke-static {p1}, Lcom/lge/app/atsagent/ViewAgent;->hasHint(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 278
    const-class v9, Landroid/widget/TextView;

    invoke-virtual {v9, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 279
    .restart local v8       #tv:Landroid/widget/TextView;
    if-eqz v8, :cond_3

    .line 280
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/lge/app/atsagent/UiElement;->fields:Ljava/util/List;

    new-instance v10, Lcom/lge/app/atsagent/UiElement$Field;

    const-string/jumbo v11, "string"

    const-string v12, "hint"

    invoke-virtual {v8}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/lge/app/atsagent/UiElement$Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    .end local v8           #tv:Landroid/widget/TextView;
    :cond_3
    const-class v9, Landroid/widget/Checkable;

    invoke-static {p1, v9}, Lcom/lge/app/atsagent/ViewAgent;->canCast(Landroid/view/View;Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 283
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/lge/app/atsagent/UiElement;->fields:Ljava/util/List;

    new-instance v11, Lcom/lge/app/atsagent/UiElement$Field;

    const-string v12, "boolean"

    const-string v13, "Checked"

    invoke-static {p1}, Lcom/lge/app/atsagent/ViewAgent;->getChecked(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string/jumbo v9, "true"

    :goto_2
    invoke-direct {v11, v12, v13, v9}, Lcom/lge/app/atsagent/UiElement$Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_4
    instance-of v9, p1, Landroid/widget/AbsListView;

    if-eqz v9, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v9

    if-eqz v9, :cond_b

    move-object v1, p1

    .line 287
    check-cast v1, Landroid/widget/AbsListView;

    .line 288
    .local v1, alv:Landroid/widget/AbsListView;
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/lge/app/atsagent/UiElement;->fields:Ljava/util/List;

    new-instance v10, Lcom/lge/app/atsagent/UiElement$Field;

    const-string v11, "int"

    const-string v12, "firstVisiblePosition"

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/lge/app/atsagent/UiElement$Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/lge/app/atsagent/UiElement;->fields:Ljava/util/List;

    new-instance v10, Lcom/lge/app/atsagent/UiElement$Field;

    const-string v11, "int"

    const-string v12, "lastVisiblePosition"

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/lge/app/atsagent/UiElement$Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/lge/app/atsagent/UiElement;->fields:Ljava/util/List;

    new-instance v10, Lcom/lge/app/atsagent/UiElement$Field;

    const-string v11, "int"

    const-string v12, "count"

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/lge/app/atsagent/UiElement$Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    if-eqz p3, :cond_b

    .line 294
    invoke-direct {p0, v1}, Lcom/lge/app/atsagent/ViewAgent;->getListAdapter(Landroid/widget/AbsListView;)Landroid/widget/ListAdapter;

    move-result-object v5

    .line 295
    .local v5, la:Landroid/widget/ListAdapter;
    instance-of v9, v5, Landroid/widget/WrapperListAdapter;

    if-eqz v9, :cond_5

    .line 296
    const-string v9, "ViewAgent"

    const-string v10, "Wrapped ListAdapter"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    check-cast v5, Landroid/widget/WrapperListAdapter;

    .end local v5           #la:Landroid/widget/ListAdapter;
    invoke-interface {v5}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    .line 300
    .restart local v5       #la:Landroid/widget/ListAdapter;
    :cond_5
    if-eqz v5, :cond_a

    .line 301
    const-string v9, "ViewAgent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ListAdapter class is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v4, 0x0

    .line 303
    .local v4, i:I
    :goto_3
    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    if-ge v4, v9, :cond_a

    .line 304
    const/4 v10, 0x0

    move-object v9, p1

    check-cast v9, Landroid/view/ViewGroup;

    invoke-interface {v5, v4, v10, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 305
    .local v2, child:Landroid/view/View;
    if-nez v2, :cond_9

    .line 306
    const-string v9, "ViewAgent"

    const-string v10, "Child from adapter is NULL"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 266
    .end local v1           #alv:Landroid/widget/AbsListView;
    .end local v2           #child:Landroid/view/View;
    .end local v4           #i:I
    .end local v5           #la:Landroid/widget/ListAdapter;
    :cond_7
    const-string v9, "false"

    goto/16 :goto_1

    .line 283
    :cond_8
    const-string v9, "false"

    goto/16 :goto_2

    .line 310
    .restart local v1       #alv:Landroid/widget/AbsListView;
    .restart local v2       #child:Landroid/view/View;
    .restart local v4       #i:I
    .restart local v5       #la:Landroid/widget/ListAdapter;
    :cond_9
    new-instance v3, Lcom/lge/app/atsagent/UiElement;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lcom/lge/app/atsagent/UiElement;-><init>(Lcom/lge/app/atsagent/UiElement;)V

    .line 311
    .local v3, childElement:Lcom/lge/app/atsagent/UiElement;
    move/from16 v0, p3

    invoke-direct {p0, v2, v3, v0}, Lcom/lge/app/atsagent/ViewAgent;->parseView(Landroid/view/View;Lcom/lge/app/atsagent/UiElement;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 312
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/lge/app/atsagent/UiElement;->children:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 315
    .end local v2           #child:Landroid/view/View;
    .end local v3           #childElement:Lcom/lge/app/atsagent/UiElement;
    .end local v4           #i:I
    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 319
    .end local v1           #alv:Landroid/widget/AbsListView;
    .end local v5           #la:Landroid/widget/ListAdapter;
    :cond_b
    const-class v9, Landroid/view/ViewGroup;

    invoke-static {p1, v9}, Lcom/lge/app/atsagent/ViewAgent;->canCast(Landroid/view/View;Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 320
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    move-object v9, p1

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_d

    move-object v9, p1

    .line 321
    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 322
    .restart local v2       #child:Landroid/view/View;
    new-instance v3, Lcom/lge/app/atsagent/UiElement;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lcom/lge/app/atsagent/UiElement;-><init>(Lcom/lge/app/atsagent/UiElement;)V

    .line 323
    .restart local v3       #childElement:Lcom/lge/app/atsagent/UiElement;
    move/from16 v0, p3

    invoke-direct {p0, v2, v3, v0}, Lcom/lge/app/atsagent/ViewAgent;->parseView(Landroid/view/View;Lcom/lge/app/atsagent/UiElement;Z)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 324
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/lge/app/atsagent/UiElement;->children:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 327
    .end local v2           #child:Landroid/view/View;
    .end local v3           #childElement:Lcom/lge/app/atsagent/UiElement;
    .end local v4           #i:I
    :cond_d
    const/4 v9, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public onHide()V
    .locals 4

    .prologue
    .line 88
    const-string v1, "ViewAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onHide(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/app/atsagent/ViewAgent;->viewHolderType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lcom/lge/app/atsagent/ViewAgent;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v1, "ViewAgent"

    const-string/jumbo v2, "onHide() continue"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/lge/app/atsagent/ViewAgent;->service:Lcom/lge/app/atsagent/IEta2Service;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/app/atsagent/ViewAgent;->service:Lcom/lge/app/atsagent/IEta2Service;

    invoke-interface {v1}, Lcom/lge/app/atsagent/IEta2Service;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/lge/app/atsagent/ViewAgent;->service:Lcom/lge/app/atsagent/IEta2Service;

    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent;->callback:Lcom/lge/app/atsagent/IEta2ServiceCallback;

    iget-object v3, p0, Lcom/lge/app/atsagent/ViewAgent;->viewHolderType:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/lge/app/atsagent/IEta2Service;->unregisterCallback(Lcom/lge/app/atsagent/IEta2ServiceCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/lge/app/atsagent/ViewAgent;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 99
    iget-object v1, p0, Lcom/lge/app/atsagent/ViewAgent;->bindContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ViewAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onShow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 46
    const-string v2, "ViewAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onShow(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent;->viewHolderType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Connected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent;->bindContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent;->bindContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    move-object v0, v2

    .line 50
    .local v0, a:Landroid/app/Activity;
    :goto_0
    instance-of v2, v0, Landroid/app/TabActivity;

    if-eqz v2, :cond_2

    .line 51
    const/4 v0, 0x0

    .line 58
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    instance-of v2, v0, Landroid/app/TabActivity;

    if-nez v2, :cond_3

    .line 60
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto :goto_1

    .line 48
    .end local v0           #a:Landroid/app/Activity;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 52
    .restart local v0       #a:Landroid/app/Activity;
    :cond_2
    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent;->bindContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent;->bindContext:Landroid/content/Context;

    check-cast v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 54
    .local v1, ctx:Landroid/content/Context;
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 55
    check-cast v0, Landroid/app/Activity;

    goto :goto_1

    .line 62
    .end local v1           #ctx:Landroid/content/Context;
    :cond_3
    instance-of v2, v0, Landroid/app/TabActivity;

    if-eqz v2, :cond_6

    .line 63
    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent;->viewHolderType:Ljava/lang/String;

    const-class v3, Landroid/app/Dialog;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    iput-object v0, p0, Lcom/lge/app/atsagent/ViewAgent;->bindContext:Landroid/content/Context;

    .line 65
    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent;->bindContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/lge/app/atsagent/IEta2Service;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 67
    const-string v2, "ViewAgent"

    const-string v3, "Successfully binded to Parent context"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 85
    :cond_4
    :goto_2
    return-void

    .line 71
    :cond_5
    const-string v2, "ViewAgent"

    const-string v3, "Failed to bind to Parent context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 76
    :cond_6
    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 77
    const-string v2, "ViewAgent"

    const-string v3, "Window is already binded to Eta2Service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 78
    :cond_7
    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent;->bindContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/lge/app/atsagent/IEta2Service;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 80
    const-string v2, "ViewAgent"

    const-string v3, "Successfully binded to Eta2Service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    .line 84
    :cond_8
    const-string v2, "ViewAgent"

    const-string v3, "Failed to bind to Eta2Service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
