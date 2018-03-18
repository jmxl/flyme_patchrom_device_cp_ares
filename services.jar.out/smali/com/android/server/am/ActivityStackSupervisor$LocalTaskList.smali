.class Lcom/android/server/am/ActivityStackSupervisor$LocalTaskList;
.super Landroid/util/SparseArray;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalTaskList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/server/am/ActivityStackSupervisor$TaskListCallback;

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 5429
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskList;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    .line 5430
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 5428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskList;->mCallback:Lcom/android/server/am/ActivityStackSupervisor$TaskListCallback;

    .line 5429
    return-void
.end method


# virtual methods
.method public isInMiniRecents()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5469
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5470
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5471
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5469
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 5471
    goto :goto_0

    :cond_1
    move v0, v1

    .line 5469
    goto :goto_0
.end method

.method public isInSplitMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5456
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5457
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5456
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 5457
    goto :goto_0

    :cond_1
    move v0, v1

    .line 5456
    goto :goto_0
.end method

.method public isSplitApp(I)Z
    .locals 4
    .param p1, "taskId"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5462
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5463
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->getTaskId()I

    move-result v0

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 5462
    :goto_0
    return v0

    .line 5464
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5465
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->getTaskId()I

    move-result v0

    if-ne v0, p1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 5464
    goto :goto_0
.end method

.method public registerTaskListCallback(Lcom/android/server/am/ActivityStackSupervisor$TaskListCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/am/ActivityStackSupervisor$TaskListCallback;

    .prologue
    .line 5434
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskList;->mCallback:Lcom/android/server/am/ActivityStackSupervisor$TaskListCallback;

    .line 5433
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 5443
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskList;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v0}, Lcom/android/server/am/ActivityStackSupervisor;->-get2(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v0

    if-lez v0, :cond_0

    .line 5446
    return-void

    .line 5448
    :cond_0
    invoke-super {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5449
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskList;->mCallback:Lcom/android/server/am/ActivityStackSupervisor$TaskListCallback;

    if-eqz v0, :cond_1

    .line 5450
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskList;->mCallback:Lcom/android/server/am/ActivityStackSupervisor$TaskListCallback;

    invoke-interface {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$TaskListCallback;->onDataRemoved(I)V

    .line 5452
    :cond_1
    return-void
.end method

.method public unRegisterTaskListCallback()V
    .locals 1

    .prologue
    .line 5438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskList;->mCallback:Lcom/android/server/am/ActivityStackSupervisor$TaskListCallback;

    .line 5437
    return-void
.end method
