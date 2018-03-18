.class public Lcom/zeusis/appsnapshot/util/PicComposeHandler;
.super Ljava/lang/Object;
.source "PicComposeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeusis/appsnapshot/util/PicComposeHandler$OnFinishListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PicComposeHandler"


# instance fields
.field private final MAX_RUNNING_NUM:I

.field private currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

.field private firstPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

.field private isFinished:Z

.field private isForceStop:Z

.field private isPrepared:Z

.field private mRunningReqList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zeusis/appsnapshot/util/PicComposeTask;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitReqList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zeusis/appsnapshot/util/PicComposeTask;",
            ">;"
        }
    .end annotation
.end field

.field private onFinishListener:Lcom/zeusis/appsnapshot/util/PicComposeHandler$OnFinishListener;


# direct methods
.method static synthetic -wrap0(Lcom/zeusis/appsnapshot/util/PicComposeHandler;Lcom/zeusis/appsnapshot/util/CropPicInfo;)V
    .locals 0
    .param p1, "picInfo"    # Lcom/zeusis/appsnapshot/util/CropPicInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->composeFinish(Lcom/zeusis/appsnapshot/util/CropPicInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v1, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->MAX_RUNNING_NUM:I

    .line 22
    iput-boolean v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->isForceStop:Z

    .line 23
    iput-boolean v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->isPrepared:Z

    .line 24
    iput-boolean v1, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->isFinished:Z

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    .line 26
    return-void
.end method

.method private declared-synchronized addPic2ComposeList(Lcom/zeusis/appsnapshot/util/PicComposeTask;)V
    .locals 2
    .param p1, "task"    # Lcom/zeusis/appsnapshot/util/PicComposeTask;

    .prologue
    monitor-enter p0

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->isPrepared:Z

    if-nez v0, :cond_0

    .line 125
    const-string/jumbo v0, "PicComposeHandler"

    const-string/jumbo v1, "PicComposeHandler is not prepared , addPic2ComposeList failed "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 126
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->isFinished:Z

    .line 129
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 122
    return-void

    .line 132
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-direct {p0, p1}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->executeTask(Lcom/zeusis/appsnapshot/util/PicComposeTask;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized checkTaskList()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zeusis/appsnapshot/util/PicComposeTask;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zeusis/appsnapshot/util/PicComposeTask;

    invoke-direct {p0, v0}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->executeTask(Lcom/zeusis/appsnapshot/util/PicComposeTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 165
    return-void

    .line 172
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    if-nez v0, :cond_3

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->isFinished:Z

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->isPrepared:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 175
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iget-boolean v0, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->isFoot:Z

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->onFinishListener:Lcom/zeusis/appsnapshot/util/PicComposeHandler$OnFinishListener;

    if-eqz v0, :cond_4

    .line 177
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iget v0, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->index:I

    if-nez v0, :cond_5

    .line 178
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->onFinishListener:Lcom/zeusis/appsnapshot/util/PicComposeHandler$OnFinishListener;

    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->firstPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iget-object v1, v1, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/zeusis/appsnapshot/util/PicComposeHandler$OnFinishListener;->onFinished(Landroid/graphics/Bitmap;)V

    .line 179
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iget-object v0, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 184
    :goto_1
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->firstPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 185
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 187
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->isFinished:Z

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->isPrepared:Z

    goto :goto_0

    .line 181
    :cond_5
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->onFinishListener:Lcom/zeusis/appsnapshot/util/PicComposeHandler$OnFinishListener;

    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iget-object v1, v1, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/zeusis/appsnapshot/util/PicComposeHandler$OnFinishListener;->onFinished(Landroid/graphics/Bitmap;)V

    .line 182
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->firstPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iget-object v0, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private composeFinish(Lcom/zeusis/appsnapshot/util/CropPicInfo;)V
    .locals 3
    .param p1, "picInfo"    # Lcom/zeusis/appsnapshot/util/CropPicInfo;

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-boolean v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->isForceStop:Z

    if-eqz v0, :cond_4

    .line 140
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->onFinishListener:Lcom/zeusis/appsnapshot/util/PicComposeHandler$OnFinishListener;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iget v0, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->index:I

    if-nez v0, :cond_3

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->onFinishListener:Lcom/zeusis/appsnapshot/util/PicComposeHandler$OnFinishListener;

    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->firstPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iget-object v1, v1, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/zeusis/appsnapshot/util/PicComposeHandler$OnFinishListener;->onFinished(Landroid/graphics/Bitmap;)V

    .line 144
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iget-object v0, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iget-object v0, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 152
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->firstPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iput-object v2, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 153
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iput-object v2, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 158
    :cond_2
    return-void

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->onFinishListener:Lcom/zeusis/appsnapshot/util/PicComposeHandler$OnFinishListener;

    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iget-object v1, v1, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/zeusis/appsnapshot/util/PicComposeHandler$OnFinishListener;->onFinished(Landroid/graphics/Bitmap;)V

    .line 150
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->firstPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iget-object v0, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 160
    :cond_4
    iput-object p1, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    .line 161
    invoke-direct {p0}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->checkTaskList()V

    .line 138
    return-void
.end method

.method private executeTask(Lcom/zeusis/appsnapshot/util/PicComposeTask;)V
    .locals 1
    .param p1, "task"    # Lcom/zeusis/appsnapshot/util/PicComposeTask;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    invoke-virtual {p1, v0}, Lcom/zeusis/appsnapshot/util/PicComposeTask;->setPreBitmapInfo(Lcom/zeusis/appsnapshot/util/CropPicInfo;)V

    .line 195
    new-instance v0, Lcom/zeusis/appsnapshot/util/PicComposeHandler$1;

    invoke-direct {v0, p0}, Lcom/zeusis/appsnapshot/util/PicComposeHandler$1;-><init>(Lcom/zeusis/appsnapshot/util/PicComposeHandler;)V

    invoke-virtual {p1, v0}, Lcom/zeusis/appsnapshot/util/PicComposeTask;->setListener(Lcom/zeusis/appsnapshot/util/PicComposeTask$TaskListener;)V

    .line 204
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 193
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    .line 116
    iput-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->firstPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    .line 117
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->isForceStop:Z

    .line 114
    return-void
.end method


# virtual methods
.method public addPic2ComposeList(Landroid/graphics/Bitmap;IZZ)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "index"    # I
    .param p3, "isHead"    # Z
    .param p4, "isFoot"    # Z

    .prologue
    .line 50
    new-instance v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;

    invoke-direct {v0}, Lcom/zeusis/appsnapshot/util/CropPicInfo;-><init>()V

    .line 51
    .local v0, "info":Lcom/zeusis/appsnapshot/util/CropPicInfo;
    iput p2, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->index:I

    .line 52
    iput-object p1, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->picWidth:I

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->picHeight:I

    .line 55
    iput-boolean p3, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->isHead:Z

    .line 56
    iput-boolean p4, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->isFoot:Z

    .line 58
    new-instance v1, Lcom/zeusis/appsnapshot/util/PicComposeTask;

    invoke-direct {v1}, Lcom/zeusis/appsnapshot/util/PicComposeTask;-><init>()V

    .line 59
    .local v1, "task":Lcom/zeusis/appsnapshot/util/PicComposeTask;
    invoke-virtual {v1, v0}, Lcom/zeusis/appsnapshot/util/PicComposeTask;->setCurrentBitmapInfo(Lcom/zeusis/appsnapshot/util/CropPicInfo;)V

    .line 61
    invoke-direct {p0, v1}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->addPic2ComposeList(Lcom/zeusis/appsnapshot/util/PicComposeTask;)V

    .line 48
    return-void
.end method

.method public forceStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 84
    iget-boolean v1, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->isFinished:Z

    if-eqz v1, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    iput-boolean v2, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->isForceStop:Z

    .line 88
    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iput-boolean v2, v1, Lcom/zeusis/appsnapshot/util/CropPicInfo;->isFoot:Z

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 92
    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zeusis/appsnapshot/util/PicComposeTask;

    .line 94
    .local v0, "task":Lcom/zeusis/appsnapshot/util/PicComposeTask;
    invoke-virtual {v0, v4}, Lcom/zeusis/appsnapshot/util/PicComposeTask;->setListener(Lcom/zeusis/appsnapshot/util/PicComposeTask$TaskListener;)V

    .line 95
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 97
    .end local v0    # "task":Lcom/zeusis/appsnapshot/util/PicComposeTask;
    :cond_2
    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->currentPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    invoke-direct {p0, v1}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->composeFinish(Lcom/zeusis/appsnapshot/util/CropPicInfo;)V

    .line 98
    iput-boolean v2, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->isFinished:Z

    .line 99
    iput-boolean v3, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->isPrepared:Z

    .line 83
    return-void
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->isFinished:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->initData()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->isPrepared:Z

    .line 31
    return-void

    .line 36
    :cond_0
    const-string/jumbo v0, "PicComposeHandler"

    const-string/jumbo v1, "PicComposeHandler is not finished , addPic2ComposeList failed "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->isFinished:Z

    if-nez v0, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->initData()V

    .line 102
    return-void
.end method

.method public setFirstPicInfo(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    .line 71
    new-instance v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;

    invoke-direct {v0}, Lcom/zeusis/appsnapshot/util/CropPicInfo;-><init>()V

    .line 72
    .local v0, "info":Lcom/zeusis/appsnapshot/util/CropPicInfo;
    const/4 v1, 0x0

    iput v1, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->index:I

    .line 73
    iput-object p1, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->picWidth:I

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->picHeight:I

    .line 76
    iput-boolean v2, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->isHead:Z

    .line 77
    iput-boolean v2, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->isFoot:Z

    .line 78
    iput-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->firstPicInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    .line 69
    return-void
.end method

.method public setOnFinishListener(Lcom/zeusis/appsnapshot/util/PicComposeHandler$OnFinishListener;)V
    .locals 0
    .param p1, "onFinishListener"    # Lcom/zeusis/appsnapshot/util/PicComposeHandler$OnFinishListener;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->onFinishListener:Lcom/zeusis/appsnapshot/util/PicComposeHandler$OnFinishListener;

    .line 109
    return-void
.end method
