.class Lcom/android/server/am/ActivityStackSupervisor$2;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Lcom/android/server/am/ActivityStackSupervisor$TaskListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityStackSupervisor;-><init>(Lcom/android/server/am/ActivityManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mEntry:Z

.field private mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->mEntry:Z

    .line 574
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->mLock:Ljava/lang/Object;

    .line 572
    return-void
.end method


# virtual methods
.method public onDataRemoved(I)V
    .locals 11
    .param p1, "stackId"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x3

    .line 577
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 578
    :try_start_0
    iget-boolean v7, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->mEntry:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    monitor-exit v8

    .line 579
    return-void

    .line 581
    :cond_0
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->mEntry:Z

    .line 582
    if-eq p1, v9, :cond_1

    if-ne p1, v10, :cond_5

    .line 583
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v7}, Lcom/android/server/am/ActivityStackSupervisor;->-get1(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 584
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 585
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v7}, Lcom/android/server/am/ActivityStackSupervisor;->-get1(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 586
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_3

    .line 587
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 588
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "taskNdx":I
    :goto_2
    if-ltz v5, :cond_2

    .line 589
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 590
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/server/am/TaskRecord;->setForceFullscreen(Z)V

    .line 588
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 586
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 584
    .end local v5    # "taskNdx":I
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 594
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4
    if-ne p1, v9, :cond_5

    .line 595
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->deferUpdateResizeInfo()V

    .line 596
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V

    .line 597
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateResizeInfo(Z)V

    .line 600
    .end local v0    # "displayNdx":I
    .end local v1    # "numDisplays":I
    :cond_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->mEntry:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    .line 576
    return-void

    .line 577
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method
