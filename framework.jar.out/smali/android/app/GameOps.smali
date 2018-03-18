.class public Landroid/app/GameOps;
.super Ljava/lang/Object;
.source "GameOps.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/GameOps$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/GameOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityName:Ljava/lang/String;

.field private dispaly:I

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Landroid/app/GameOps$1;

    invoke-direct {v0}, Landroid/app/GameOps$1;-><init>()V

    sput-object v0, Landroid/app/GameOps;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/GameOps;->dispaly:I

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "dispaly"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/GameOps;->dispaly:I

    .line 16
    iput-object p1, p0, Landroid/app/GameOps;->packageName:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Landroid/app/GameOps;->activityName:Ljava/lang/String;

    .line 18
    iput p3, p0, Landroid/app/GameOps;->dispaly:I

    .line 15
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/app/GameOps;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public getDispaly()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Landroid/app/GameOps;->dispaly:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Landroid/app/GameOps;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Landroid/app/GameOps;->activityName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setDispaly(I)V
    .locals 0
    .param p1, "dispaly"    # I

    .prologue
    .line 46
    iput p1, p0, Landroid/app/GameOps;->dispaly:I

    .line 45
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Landroid/app/GameOps;->packageName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 56
    iget-object v0, p0, Landroid/app/GameOps;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Landroid/app/GameOps;->activityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget v0, p0, Landroid/app/GameOps;->dispaly:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return-void
.end method
