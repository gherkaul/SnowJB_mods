.class public Lcom/lge/app/atsagent/AtsViewAgent;
.super Ljava/lang/Object;
.source "AtsViewAgent.java"


# static fields
.field private static final ETA2_PACKAGE_NAME:Ljava/lang/String; = "lgerp.android.eta2"

#the value of this static final field might be set in the static constructor
.field public static final IS_ETA2_ACTIVATED:Z = false

.field private static final TAG:Ljava/lang/String; = "AtsViewAgent"

.field private static final VIEWAGENT2_CLASS_NAME:Ljava/lang/String; = "com.lge.atsagent.ViewAgent"

.field private static mClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "persist.sys.ats_start"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/app/atsagent/AtsViewAgent;->IS_ETA2_ACTIVATED:Z

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/app/atsagent/AtsViewAgent;->mClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createViewAgent(Landroid/view/View;Ljava/lang/String;)Lcom/lge/app/atsagent/IViewAgent;
    .locals 7
    .parameter "rootView"
    .parameter "viewHolderType"

    .prologue
    .line 34
    sget-boolean v4, Lcom/lge/app/atsagent/AtsViewAgent;->IS_ETA2_ACTIVATED:Z

    if-eqz v4, :cond_1

    if-eqz p0, :cond_1

    .line 36
    :try_start_0
    sget-object v4, Lcom/lge/app/atsagent/AtsViewAgent;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez v4, :cond_0

    .line 37
    invoke-static {}, Lcom/lge/app/atsagent/AtsViewAgent;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    sput-object v4, Lcom/lge/app/atsagent/AtsViewAgent;->mClassLoader:Ljava/lang/ClassLoader;

    .line 39
    :cond_0
    sget-object v4, Lcom/lge/app/atsagent/AtsViewAgent;->mClassLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_1

    .line 41
    :try_start_1
    const-string v4, "com.lge.atsagent.ViewAgent"

    const/4 v5, 0x1

    sget-object v6, Lcom/lge/app/atsagent/AtsViewAgent;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v4, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 42
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 43
    .local v1, con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/app/atsagent/IViewAgent;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v4

    .line 44
    :catch_0
    move-exception v3

    .line 45
    .local v3, ex:Ljava/lang/ClassNotFoundException;
    :try_start_2
    const-string v4, "AtsViewAgent"

    const-string v5, "com.lge.atsagent.ViewAgent class is not found in Eta2, using ViewAgent from framework..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v4, Lcom/lge/app/atsagent/ViewAgent;

    invoke-direct {v4, p0, p1}, Lcom/lge/app/atsagent/ViewAgent;-><init>(Landroid/view/View;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 49
    .end local v3           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 50
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "AtsViewAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ViewAgent classes loading failure: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static getClassLoader()Ljava/lang/ClassLoader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 57
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 59
    .local v1, pm:Landroid/content/pm/IPackageManager;
    if-eqz v1, :cond_1

    .line 60
    const-string v2, "lgerp.android.eta2"

    invoke-interface {v1, v2, v3, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 61
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 62
    const-string v2, "AtsViewAgent"

    const-string v3, "Loading ViewAgent classes from Eta2..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v2, Ldalvik/system/PathClassLoader;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-class v4, Lcom/lge/app/atsagent/AtsViewAgent;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 68
    .end local v0           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    .line 65
    .restart local v0       #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    const-string v2, "AtsViewAgent"

    const-string v3, "No Eta2 is installed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v0           #info:Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
