.class Lcom/zeusis/appsnapshot/util/PicComposeHandler$1;
.super Ljava/lang/Object;
.source "PicComposeHandler.java"

# interfaces
.implements Lcom/zeusis/appsnapshot/util/PicComposeTask$TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zeusis/appsnapshot/util/PicComposeHandler;->executeTask(Lcom/zeusis/appsnapshot/util/PicComposeTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeusis/appsnapshot/util/PicComposeHandler;


# direct methods
.method constructor <init>(Lcom/zeusis/appsnapshot/util/PicComposeHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler$1;->this$0:Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public onFinished(Lcom/zeusis/appsnapshot/util/CropPicInfo;)V
    .locals 1
    .param p1, "picInfo"    # Lcom/zeusis/appsnapshot/util/CropPicInfo;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeHandler$1;->this$0:Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    invoke-static {v0, p1}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->-wrap0(Lcom/zeusis/appsnapshot/util/PicComposeHandler;Lcom/zeusis/appsnapshot/util/CropPicInfo;)V

    .line 197
    return-void
.end method
