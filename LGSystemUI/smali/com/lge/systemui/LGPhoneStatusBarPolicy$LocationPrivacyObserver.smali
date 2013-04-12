.class Lcom/lge/systemui/LGPhoneStatusBarPolicy$LocationPrivacyObserver;
.super Ljava/lang/Object;
.source "LGPhoneStatusBarPolicy.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/LGPhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationPrivacyObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/LGPhoneStatusBarPolicy;


# direct methods
.method private constructor <init>(Lcom/lge/systemui/LGPhoneStatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy$LocationPrivacyObserver;->this$0:Lcom/lge/systemui/LGPhoneStatusBarPolicy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/systemui/LGPhoneStatusBarPolicy;Lcom/lge/systemui/LGPhoneStatusBarPolicy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/lge/systemui/LGPhoneStatusBarPolicy$LocationPrivacyObserver;-><init>(Lcom/lge/systemui/LGPhoneStatusBarPolicy;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy$LocationPrivacyObserver;->this$0:Lcom/lge/systemui/LGPhoneStatusBarPolicy;

    #calls: Lcom/lge/systemui/LGPhoneStatusBarPolicy;->updateGPSPrivacySetting()V
    invoke-static {v0}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->access$100(Lcom/lge/systemui/LGPhoneStatusBarPolicy;)V

    .line 371
    return-void
.end method
