.class public final Lcom/android/server/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Op"
.end annotation


# instance fields
.field public allowedCount:I

.field final clientTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public dialogReqQueue:Lcom/android/server/ZsPermissionDialogReqQueue;

.field public duration:I

.field public ignoredCount:I

.field public mode:I

.field public nesting:I

.field public noteOpCount:I

.field public final op:I

.field public final packageName:Ljava/lang/String;

.field public proxyPackageName:Ljava/lang/String;

.field public proxyUid:I

.field public rejectTime:J

.field private remember:Z

.field public startOpCount:I

.field public time:J

.field public final uid:I


# direct methods
.method static synthetic -set0(Lcom/android/server/AppOpsService$Op;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AppOpsService$Op;->remember:Z

    return p1
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 1
    .param p1, "_uid"    # I
    .param p2, "_packageName"    # Ljava/lang/String;
    .param p3, "_op"    # I
    .param p4, "_mode"    # I

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 195
    iput p1, p0, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 196
    iput-object p2, p0, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 197
    iput p3, p0, Lcom/android/server/AppOpsService$Op;->op:I

    .line 198
    iput p4, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 199
    new-instance v0, Lcom/android/server/ZsPermissionDialogReqQueue;

    invoke-direct {v0}, Lcom/android/server/ZsPermissionDialogReqQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/ZsPermissionDialogReqQueue;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AppOpsService$Op;->remember:Z

    .line 194
    return-void
.end method
