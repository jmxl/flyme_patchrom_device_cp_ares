.class public Landroid/util/RunningRecord;
.super Ljava/lang/Object;
.source "RunningRecord.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RunningRecord"

.field private static mRunningComponent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "com.android.systemui"

    sput-object v0, Landroid/util/RunningRecord;->mRunningComponent:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRunningComponent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Landroid/util/RunningRecord;->mRunningComponent:Ljava/lang/String;

    return-object v0
.end method

.method public static setRunningComponent(Ljava/lang/String;)V
    .locals 0
    .param p0, "runningComponent"    # Ljava/lang/String;

    .prologue
    .line 46
    sput-object p0, Landroid/util/RunningRecord;->mRunningComponent:Ljava/lang/String;

    .line 45
    return-void
.end method
