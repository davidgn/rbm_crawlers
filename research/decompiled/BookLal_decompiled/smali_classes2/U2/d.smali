.class public final enum LU2/d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/S;


# static fields
.field public static final enum b:LU2/d;

.field public static final enum c:LU2/d;

.field public static final enum d:LU2/d;

.field public static final enum e:LU2/d;

.field public static final synthetic f:[LU2/d;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LU2/d;

    const-string v1, "ORDER_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LU2/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, LU2/d;->b:LU2/d;

    new-instance v1, LU2/d;

    const-string v2, "ASCENDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LU2/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, LU2/d;->c:LU2/d;

    new-instance v2, LU2/d;

    const-string v3, "DESCENDING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LU2/d;-><init>(Ljava/lang/String;II)V

    sput-object v2, LU2/d;->d:LU2/d;

    new-instance v3, LU2/d;

    const/4 v4, -0x1

    const-string v5, "UNRECOGNIZED"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, LU2/d;-><init>(Ljava/lang/String;II)V

    sput-object v3, LU2/d;->e:LU2/d;

    filled-new-array {v0, v1, v2, v3}, [LU2/d;

    move-result-object v0

    sput-object v0, LU2/d;->f:[LU2/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LU2/d;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LU2/d;
    .locals 1

    const-class v0, LU2/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LU2/d;

    return-object p0
.end method

.method public static values()[LU2/d;
    .locals 1

    sget-object v0, LU2/d;->f:[LU2/d;

    invoke-virtual {v0}, [LU2/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LU2/d;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, LU2/d;->e:LU2/d;

    if-eq p0, v0, :cond_0

    iget v0, p0, LU2/d;->a:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
