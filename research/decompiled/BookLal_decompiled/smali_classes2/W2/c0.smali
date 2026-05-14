.class public final enum LW2/c0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/S;


# static fields
.field public static final enum b:LW2/c0;

.field public static final enum c:LW2/c0;

.field public static final enum d:LW2/c0;

.field public static final enum e:LW2/c0;

.field public static final synthetic f:[LW2/c0;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LW2/c0;

    const-string v1, "OPERATOR_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LW2/c0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LW2/c0;->b:LW2/c0;

    new-instance v1, LW2/c0;

    const-string v2, "AND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LW2/c0;-><init>(Ljava/lang/String;II)V

    sput-object v1, LW2/c0;->c:LW2/c0;

    new-instance v2, LW2/c0;

    const-string v3, "OR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LW2/c0;-><init>(Ljava/lang/String;II)V

    sput-object v2, LW2/c0;->d:LW2/c0;

    new-instance v3, LW2/c0;

    const/4 v4, -0x1

    const-string v5, "UNRECOGNIZED"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, LW2/c0;-><init>(Ljava/lang/String;II)V

    sput-object v3, LW2/c0;->e:LW2/c0;

    filled-new-array {v0, v1, v2, v3}, [LW2/c0;

    move-result-object v0

    sput-object v0, LW2/c0;->f:[LW2/c0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LW2/c0;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LW2/c0;
    .locals 1

    const-class v0, LW2/c0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LW2/c0;

    return-object p0
.end method

.method public static values()[LW2/c0;
    .locals 1

    sget-object v0, LW2/c0;->f:[LW2/c0;

    invoke-virtual {v0}, [LW2/c0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LW2/c0;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, LW2/c0;->e:LW2/c0;

    if-eq p0, v0, :cond_0

    iget v0, p0, LW2/c0;->a:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
