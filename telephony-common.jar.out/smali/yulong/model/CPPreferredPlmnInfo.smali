.class public Lyulong/model/CPPreferredPlmnInfo;
.super Ljava/lang/Object;
.source "CPPreferredPlmnInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyulong/model/CPPreferredPlmnInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lyulong/model/CPPreferredPlmnInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field e_utranAct:I

.field format:I

.field gsmAct:I

.field gsmCompactAct:I

.field index:I

.field oper:Ljava/lang/String;

.field utranAct:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lyulong/model/CPPreferredPlmnInfo$1;

    invoke-direct {v0}, Lyulong/model/CPPreferredPlmnInfo$1;-><init>()V

    sput-object v0, Lyulong/model/CPPreferredPlmnInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IIII)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "format"    # I
    .param p3, "oper"    # Ljava/lang/String;
    .param p4, "gsmAct"    # I
    .param p5, "gsmCompactAct"    # I
    .param p6, "utranAct"    # I
    .param p7, "e_utranAct"    # I

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lyulong/model/CPPreferredPlmnInfo;->index:I

    .line 42
    iput v0, p0, Lyulong/model/CPPreferredPlmnInfo;->format:I

    .line 44
    iput v0, p0, Lyulong/model/CPPreferredPlmnInfo;->gsmAct:I

    .line 45
    iput v0, p0, Lyulong/model/CPPreferredPlmnInfo;->gsmCompactAct:I

    .line 46
    iput v0, p0, Lyulong/model/CPPreferredPlmnInfo;->utranAct:I

    .line 47
    iput v0, p0, Lyulong/model/CPPreferredPlmnInfo;->e_utranAct:I

    .line 86
    iput p1, p0, Lyulong/model/CPPreferredPlmnInfo;->index:I

    .line 87
    iput p2, p0, Lyulong/model/CPPreferredPlmnInfo;->format:I

    .line 88
    iput-object p3, p0, Lyulong/model/CPPreferredPlmnInfo;->oper:Ljava/lang/String;

    .line 89
    iput p4, p0, Lyulong/model/CPPreferredPlmnInfo;->gsmAct:I

    .line 90
    iput p5, p0, Lyulong/model/CPPreferredPlmnInfo;->gsmCompactAct:I

    .line 91
    iput p6, p0, Lyulong/model/CPPreferredPlmnInfo;->utranAct:I

    .line 92
    iput p7, p0, Lyulong/model/CPPreferredPlmnInfo;->e_utranAct:I

    .line 85
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getEUtranAct()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lyulong/model/CPPreferredPlmnInfo;->e_utranAct:I

    return v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lyulong/model/CPPreferredPlmnInfo;->format:I

    return v0
.end method

.method public getGsmAct()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lyulong/model/CPPreferredPlmnInfo;->gsmAct:I

    return v0
.end method

.method public getGsmCompactAct()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lyulong/model/CPPreferredPlmnInfo;->gsmCompactAct:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lyulong/model/CPPreferredPlmnInfo;->index:I

    return v0
.end method

.method public getOper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lyulong/model/CPPreferredPlmnInfo;->oper:Ljava/lang/String;

    return-object v0
.end method

.method public getUtranAct()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lyulong/model/CPPreferredPlmnInfo;->utranAct:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 110
    iget v0, p0, Lyulong/model/CPPreferredPlmnInfo;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lyulong/model/CPPreferredPlmnInfo;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Lyulong/model/CPPreferredPlmnInfo;->oper:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget v0, p0, Lyulong/model/CPPreferredPlmnInfo;->gsmAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Lyulong/model/CPPreferredPlmnInfo;->gsmCompactAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Lyulong/model/CPPreferredPlmnInfo;->utranAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Lyulong/model/CPPreferredPlmnInfo;->e_utranAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return-void
.end method
