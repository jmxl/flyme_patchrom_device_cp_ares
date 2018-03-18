.class final Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LocalTaskRecord"
.end annotation


# instance fields
.field private affinity:Ljava/lang/String;

.field private final isDockable:Z

.field private mBounds:Landroid/graphics/Rect;

.field private final mIntent:Landroid/content/Intent;

.field private mMultiTask:Z

.field private final mTaskId:I

.field private realActivity:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->affinity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->isDockable:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mTaskId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->realActivity:Ljava/lang/String;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/pm/ActivityInfo;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 5510
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5511
    if-eqz p2, :cond_0

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5512
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 5511
    :goto_0
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->affinity:Ljava/lang/String;

    .line 5514
    if-eqz p2, :cond_1

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5515
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 5514
    :goto_1
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->realActivity:Ljava/lang/String;

    .line 5516
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5517
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->affinity:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->realActivity:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 5518
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->realActivity:Ljava/lang/String;

    .line 5519
    iput-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->isDockable:Z

    .line 5520
    iput-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mIntent:Landroid/content/Intent;

    .line 5521
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mTaskId:I

    .line 5522
    iput-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mMultiTask:Z

    .line 5510
    return-void

    .line 5512
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    goto :goto_0

    .line 5515
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    goto :goto_1
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5497
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5498
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5499
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 5498
    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->affinity:Ljava/lang/String;

    .line 5500
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 5501
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 5500
    :goto_1
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->realActivity:Ljava/lang/String;

    .line 5502
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mIntent:Landroid/content/Intent;

    .line 5503
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_2
    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mTaskId:I

    .line 5504
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->canGoInDockedStack()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->isDockable:Z

    .line 5505
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    :goto_3
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 5506
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 5507
    const/high16 v1, 0x8080000

    .line 5506
    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mMultiTask:Z

    .line 5497
    return-void

    .line 5499
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto :goto_0

    .line 5501
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto :goto_1

    .line 5503
    :cond_2
    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 5505
    goto :goto_3

    :cond_4
    move v0, v2

    .line 5506
    goto :goto_4
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/TaskRecord;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5484
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5485
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5486
    iget-object v0, p2, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 5485
    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->affinity:Ljava/lang/String;

    .line 5487
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 5488
    iget-object v0, p2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 5487
    :goto_1
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->realActivity:Ljava/lang/String;

    .line 5489
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mIntent:Landroid/content/Intent;

    .line 5490
    iget v0, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mTaskId:I

    .line 5491
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->canGoInDockedStack()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->isDockable:Z

    .line 5492
    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    :goto_2
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 5493
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 5494
    const/high16 v1, 0x8080000

    .line 5493
    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mMultiTask:Z

    .line 5484
    return-void

    .line 5486
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto :goto_0

    .line 5488
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 5492
    goto :goto_2

    :cond_3
    move v0, v2

    .line 5493
    goto :goto_3
.end method

.method private equals(Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;)Z
    .locals 2
    .param p1, "localTaskRecord"    # Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;

    .prologue
    .line 5556
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mTaskId:I

    iget v1, p1, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mTaskId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private equals(Ljava/lang/String;)Z
    .locals 1
    .param p1, "activityInfo"    # Ljava/lang/String;

    .prologue
    .line 5560
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private equalsByAffinity(Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;)Z
    .locals 4
    .param p1, "localTaskRecord"    # Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5550
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->affinity:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5551
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->realActivity:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->realActivity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5552
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->isMultiTask()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 5550
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 5527
    if-eqz p1, :cond_3

    .line 5528
    instance-of v5, p1, Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_1

    move-object v4, p1

    .line 5529
    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 5530
    .local v4, "tr":Lcom/android/server/am/TaskRecord;
    new-instance v2, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {v2, v5, v4}, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/TaskRecord;)V

    .line 5531
    .local v2, "temp":Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;
    iget-boolean v5, v4, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v5, :cond_0

    .line 5532
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->equals(Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;)Z

    move-result v5

    return v5

    .line 5534
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->equalsByAffinity(Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;)Z

    move-result v5

    return v5

    .line 5536
    .end local v2    # "temp":Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;
    .end local v4    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    instance-of v5, p1, Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_2

    move-object v1, p1

    .line 5537
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5538
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    new-instance v2, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {v2, v5, v1}, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;)V

    .line 5539
    .restart local v2    # "temp":Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->equals(Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;)Z

    move-result v5

    return v5

    .line 5540
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "temp":Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;
    :cond_2
    instance-of v5, p1, Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_3

    move-object v0, p1

    .line 5541
    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 5542
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 5543
    .local v3, "temp":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->equals(Ljava/lang/String;)Z

    move-result v5

    return v5

    .line 5546
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "temp":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    return v5
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 5569
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getRealActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5585
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->realActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 5581
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTaskId()I
    .locals 1

    .prologue
    .line 5573
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mTaskId:I

    return v0
.end method

.method public isDockable()Z
    .locals 1

    .prologue
    .line 5577
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->isDockable:Z

    return v0
.end method

.method public isMultiTask()Z
    .locals 1

    .prologue
    .line 5588
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mMultiTask:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "affinity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", realActivity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->realActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , mTaskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$LocalTaskRecord;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
