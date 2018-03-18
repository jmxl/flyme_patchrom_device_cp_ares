.class public Landroid/app/ActivityManager$ResizedTaskInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResizedTaskInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$ResizedTaskInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$ResizedTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public affinity:Ljava/lang/String;

.field public isDockable:Z

.field public realActivity:Ljava/lang/String;

.field public stackId:I

.field public taskId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2443
    new-instance v0, Landroid/app/ActivityManager$ResizedTaskInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$ResizedTaskInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$ResizedTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2414
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 2457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2458
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$ResizedTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 2457
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$ResizedTaskInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$ResizedTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2423
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 2436
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityManager$ResizedTaskInfo;->affinity:Ljava/lang/String;

    .line 2437
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityManager$ResizedTaskInfo;->realActivity:Ljava/lang/String;

    .line 2438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/ActivityManager$ResizedTaskInfo;->taskId:I

    .line 2439
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/ActivityManager$ResizedTaskInfo;->stackId:I

    .line 2440
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/app/ActivityManager$ResizedTaskInfo;->isDockable:Z

    .line 2435
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$ResizedTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , affinity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager$ResizedTaskInfo;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , realActivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2463
    iget-object v1, p0, Landroid/app/ActivityManager$ResizedTaskInfo;->realActivity:Ljava/lang/String;

    .line 2462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2463
    const-string/jumbo v1, " , stackId = "

    .line 2462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2463
    iget v1, p0, Landroid/app/ActivityManager$ResizedTaskInfo;->stackId:I

    .line 2462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2463
    const-string/jumbo v1, " ,isDockable = "

    .line 2462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2463
    iget-boolean v1, p0, Landroid/app/ActivityManager$ResizedTaskInfo;->isDockable:Z

    .line 2462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2428
    iget-object v0, p0, Landroid/app/ActivityManager$ResizedTaskInfo;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2429
    iget-object v0, p0, Landroid/app/ActivityManager$ResizedTaskInfo;->realActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2430
    iget v0, p0, Landroid/app/ActivityManager$ResizedTaskInfo;->taskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2431
    iget v0, p0, Landroid/app/ActivityManager$ResizedTaskInfo;->stackId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2432
    iget-boolean v0, p0, Landroid/app/ActivityManager$ResizedTaskInfo;->isDockable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2427
    return-void

    .line 2432
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
