.class Lcom/android/systemui/recent/RecentTasksLoader$1;
.super Landroid/os/AsyncTask;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentTasksLoader;->loadTasksInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/systemui/recent/TaskDescription;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentTasksLoader;

.field final synthetic val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 243
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 21
    .parameter "params"

    .prologue
    .line 258
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v15

    .line 259
    .local v15, origPri:I
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$100(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 261
    .local v16, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$100(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 264
    .local v8, am:Landroid/app/ActivityManager;
    invoke-static {}, Lcom/android/systemui/recent/RecentTasksLoader;->access$200()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v8, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v19

    .line 266
    .local v19, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v14

    .line 267
    .local v14, numTasks:I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 270
    .local v7, homeInfo:Landroid/content/pm/ActivityInfo;
    const/4 v10, 0x1

    .line 271
    .local v10, firstScreenful:Z
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v20, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v9, 0x1

    .line 277
    .local v9, first:I
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 278
    .local v18, recentInfoTest:Landroid/app/ActivityManager$RecentTaskInfo;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/recent/RecentTasksLoader;->mCameraQuickmemoException:Z

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    sget-object v2, Lcom/android/systemui/recent/RecentTasksLoader;->QUICKMEMO:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recent/RecentTasksLoader;->isTheApp(Ljava/lang/String;Landroid/content/Intent;Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 281
    const/4 v1, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #recentInfoTest:Landroid/app/ActivityManager$RecentTaskInfo;
    check-cast v18, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 282
    .restart local v18       #recentInfoTest:Landroid/app/ActivityManager$RecentTaskInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    sget-object v2, Lcom/android/systemui/recent/RecentTasksLoader;->LGCAMERA:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recent/RecentTasksLoader;->isTheApp(Ljava/lang/String;Landroid/content/Intent;Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 284
    const/4 v9, 0x2

    .line 285
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/recent/RecentTasksLoader;->mCameraQuickmemoException:Z

    .line 290
    :cond_0
    move v11, v9

    .local v11, i:I
    const/4 v12, 0x0

    .local v12, index:I
    :goto_0
    if-ge v11, v14, :cond_1

    invoke-static {}, Lcom/android/systemui/recent/RecentTasksLoader;->access$200()I

    move-result v1

    if-ge v12, v1, :cond_1

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentTasksLoader$1;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 319
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentTasksLoader$1;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 320
    const-string v1, "RecentTasksLoader"

    const-string v2, "publishProgress will be called. 2 "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v20, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader$1;->publishProgress([Ljava/lang/Object;)V

    .line 322
    if-eqz v10, :cond_2

    .line 323
    const-string v1, "RecentTasksLoader"

    const-string v2, "publishProgress will be called. 3 "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader$1;->publishProgress([Ljava/lang/Object;)V

    .line 331
    :cond_2
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/android/systemui/recent/TaskDescription;

    invoke-direct {v2}, Lcom/android/systemui/recent/TaskDescription;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    invoke-static {v15}, Landroid/os/Process;->setThreadPriority(I)V

    .line 338
    const/4 v1, 0x0

    return-object v1

    .line 294
    :cond_3
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 295
    .local v17, recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    move-object/from16 v0, v17

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recent/RecentTasksLoader;->createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/content/pm/ActivityInfo;)Lcom/android/systemui/recent/TaskDescription;

    move-result-object v13

    .line 299
    .local v13, item:Lcom/android/systemui/recent/TaskDescription;
    if-eqz v13, :cond_5

    .line 302
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v13}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    if-eqz v10, :cond_4

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mNumTasksInFirstScreenful:I
    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$300(Lcom/android/systemui/recent/RecentTasksLoader;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 309
    const-string v1, "RecentTasksLoader"

    const-string v2, "publishProgress will be called. 1 "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v20, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader$1;->publishProgress([Ljava/lang/Object;)V

    .line 311
    new-instance v20, Ljava/util/ArrayList;

    .end local v20           #tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .restart local v20       #tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v10, 0x0

    .line 315
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 290
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 333
    .end local v13           #item:Lcom/android/systemui/recent/TaskDescription;
    .end local v17           #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 304
    .restart local v13       #item:Lcom/android/systemui/recent/TaskDescription;
    .restart local v17       #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 243
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$1;->onProgressUpdate([Ljava/util/ArrayList;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, values:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const-string v1, "RecentTasksLoader"

    const-string v2, "[loadTasksInBackground] onProgressUpdate is called. "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader$1;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 251
    .local v0, newTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$000(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recent/RecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;)V

    .line 253
    .end local v0           #newTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    :cond_0
    return-void
.end method
