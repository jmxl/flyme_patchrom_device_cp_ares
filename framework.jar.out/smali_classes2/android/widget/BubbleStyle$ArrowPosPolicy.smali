.class public final enum Landroid/widget/BubbleStyle$ArrowPosPolicy;
.super Ljava/lang/Enum;
.source "BubbleStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BubbleStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArrowPosPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/BubbleStyle$ArrowPosPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/BubbleStyle$ArrowPosPolicy;

.field public static final enum SelfBegin:Landroid/widget/BubbleStyle$ArrowPosPolicy;

.field public static final enum SelfCenter:Landroid/widget/BubbleStyle$ArrowPosPolicy;

.field public static final enum SelfEnd:Landroid/widget/BubbleStyle$ArrowPosPolicy;

.field public static final enum TargetCenter:Landroid/widget/BubbleStyle$ArrowPosPolicy;

.field private static final intToTypeDict:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/BubbleStyle$ArrowPosPolicy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 73
    new-instance v2, Landroid/widget/BubbleStyle$ArrowPosPolicy;

    const-string/jumbo v3, "TargetCenter"

    invoke-direct {v2, v3, v1, v1}, Landroid/widget/BubbleStyle$ArrowPosPolicy;-><init>(Ljava/lang/String;II)V

    .line 76
    sput-object v2, Landroid/widget/BubbleStyle$ArrowPosPolicy;->TargetCenter:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    .line 78
    new-instance v2, Landroid/widget/BubbleStyle$ArrowPosPolicy;

    const-string/jumbo v3, "SelfCenter"

    invoke-direct {v2, v3, v4, v4}, Landroid/widget/BubbleStyle$ArrowPosPolicy;-><init>(Ljava/lang/String;II)V

    .line 81
    sput-object v2, Landroid/widget/BubbleStyle$ArrowPosPolicy;->SelfCenter:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    .line 83
    new-instance v2, Landroid/widget/BubbleStyle$ArrowPosPolicy;

    const-string/jumbo v3, "SelfBegin"

    invoke-direct {v2, v3, v5, v5}, Landroid/widget/BubbleStyle$ArrowPosPolicy;-><init>(Ljava/lang/String;II)V

    .line 86
    sput-object v2, Landroid/widget/BubbleStyle$ArrowPosPolicy;->SelfBegin:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    .line 88
    new-instance v2, Landroid/widget/BubbleStyle$ArrowPosPolicy;

    const-string/jumbo v3, "SelfEnd"

    invoke-direct {v2, v3, v6, v6}, Landroid/widget/BubbleStyle$ArrowPosPolicy;-><init>(Ljava/lang/String;II)V

    .line 91
    sput-object v2, Landroid/widget/BubbleStyle$ArrowPosPolicy;->SelfEnd:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    .line 72
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/widget/BubbleStyle$ArrowPosPolicy;

    sget-object v3, Landroid/widget/BubbleStyle$ArrowPosPolicy;->TargetCenter:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    aput-object v3, v2, v1

    sget-object v3, Landroid/widget/BubbleStyle$ArrowPosPolicy;->SelfCenter:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    aput-object v3, v2, v4

    sget-object v3, Landroid/widget/BubbleStyle$ArrowPosPolicy;->SelfBegin:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    aput-object v3, v2, v5

    sget-object v3, Landroid/widget/BubbleStyle$ArrowPosPolicy;->SelfEnd:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    aput-object v3, v2, v6

    sput-object v2, Landroid/widget/BubbleStyle$ArrowPosPolicy;->$VALUES:[Landroid/widget/BubbleStyle$ArrowPosPolicy;

    .line 93
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Landroid/widget/BubbleStyle$ArrowPosPolicy;->intToTypeDict:Landroid/util/SparseArray;

    .line 96
    invoke-static {}, Landroid/widget/BubbleStyle$ArrowPosPolicy;->values()[Landroid/widget/BubbleStyle$ArrowPosPolicy;

    move-result-object v2

    array-length v3, v2

    .local v0, "type":Landroid/widget/BubbleStyle$ArrowPosPolicy;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 97
    sget-object v4, Landroid/widget/BubbleStyle$ArrowPosPolicy;->intToTypeDict:Landroid/util/SparseArray;

    iget v5, v0, Landroid/widget/BubbleStyle$ArrowPosPolicy;->mValue:I

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "value"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/BubbleStyle$ArrowPosPolicy;->mValue:I

    .line 108
    iput p3, p0, Landroid/widget/BubbleStyle$ArrowPosPolicy;->mValue:I

    .line 107
    return-void
.end method

.method public static valueOf(I)Landroid/widget/BubbleStyle$ArrowPosPolicy;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 112
    sget-object v1, Landroid/widget/BubbleStyle$ArrowPosPolicy;->intToTypeDict:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BubbleStyle$ArrowPosPolicy;

    .line 113
    .local v0, "type":Landroid/widget/BubbleStyle$ArrowPosPolicy;
    if-nez v0, :cond_0

    .line 114
    sget-object v1, Landroid/widget/BubbleStyle$ArrowPosPolicy;->TargetCenter:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    return-object v1

    .line 115
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/BubbleStyle$ArrowPosPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Landroid/widget/BubbleStyle$ArrowPosPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/BubbleStyle$ArrowPosPolicy;

    return-object v0
.end method

.method public static values()[Landroid/widget/BubbleStyle$ArrowPosPolicy;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Landroid/widget/BubbleStyle$ArrowPosPolicy;->$VALUES:[Landroid/widget/BubbleStyle$ArrowPosPolicy;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Landroid/widget/BubbleStyle$ArrowPosPolicy;->mValue:I

    return v0
.end method
