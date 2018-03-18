.class public final enum Lse/dirac/acs/api/SyncRequestReply;
.super Ljava/lang/Enum;
.source "SyncRequestReply.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lse/dirac/acs/api/SyncRequestReply;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lse/dirac/acs/api/SyncRequestReply;

.field public static final enum IN_PROGRESS:Lse/dirac/acs/api/SyncRequestReply;

.field public static final enum NOT_STARTED:Lse/dirac/acs/api/SyncRequestReply;

.field public static final enum STARTED:Lse/dirac/acs/api/SyncRequestReply;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lse/dirac/acs/api/SyncRequestReply;

    const-string/jumbo v1, "STARTED"

    invoke-direct {v0, v1, v2, v2}, Lse/dirac/acs/api/SyncRequestReply;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/SyncRequestReply;->STARTED:Lse/dirac/acs/api/SyncRequestReply;

    .line 9
    new-instance v0, Lse/dirac/acs/api/SyncRequestReply;

    const-string/jumbo v1, "NOT_STARTED"

    invoke-direct {v0, v1, v3, v3}, Lse/dirac/acs/api/SyncRequestReply;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/SyncRequestReply;->NOT_STARTED:Lse/dirac/acs/api/SyncRequestReply;

    .line 10
    new-instance v0, Lse/dirac/acs/api/SyncRequestReply;

    const-string/jumbo v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v4, v4}, Lse/dirac/acs/api/SyncRequestReply;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/SyncRequestReply;->IN_PROGRESS:Lse/dirac/acs/api/SyncRequestReply;

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Lse/dirac/acs/api/SyncRequestReply;

    sget-object v1, Lse/dirac/acs/api/SyncRequestReply;->STARTED:Lse/dirac/acs/api/SyncRequestReply;

    aput-object v1, v0, v2

    sget-object v1, Lse/dirac/acs/api/SyncRequestReply;->NOT_STARTED:Lse/dirac/acs/api/SyncRequestReply;

    aput-object v1, v0, v3

    sget-object v1, Lse/dirac/acs/api/SyncRequestReply;->IN_PROGRESS:Lse/dirac/acs/api/SyncRequestReply;

    aput-object v1, v0, v4

    sput-object v0, Lse/dirac/acs/api/SyncRequestReply;->$VALUES:[Lse/dirac/acs/api/SyncRequestReply;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lse/dirac/acs/api/SyncRequestReply;->value:I

    .line 28
    return-void
.end method

.method public static fromInt(I)Lse/dirac/acs/api/SyncRequestReply;
    .locals 3

    .prologue
    .line 17
    invoke-static {}, Lse/dirac/acs/api/SyncRequestReply;->values()[Lse/dirac/acs/api/SyncRequestReply;

    move-result-object v1

    const/4 v0, 0x0

    .line 18
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_0
    aget-object v2, v1, v0

    iget v2, v2, Lse/dirac/acs/api/SyncRequestReply;->value:I

    if-eq v2, p0, :cond_1

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_1
    aget-object v0, v1, v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lse/dirac/acs/api/SyncRequestReply;
    .locals 1

    .prologue
    const-class v0, Lse/dirac/acs/api/SyncRequestReply;

    .line 7
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/SyncRequestReply;

    return-object v0
.end method

.method public static values()[Lse/dirac/acs/api/SyncRequestReply;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lse/dirac/acs/api/SyncRequestReply;->$VALUES:[Lse/dirac/acs/api/SyncRequestReply;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lse/dirac/acs/api/SyncRequestReply;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lse/dirac/acs/api/SyncRequestReply;->value:I

    return v0
.end method
