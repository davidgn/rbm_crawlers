.class public final enum LU2/f;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/S;


# static fields
.field public static final enum b:LU2/f;

.field public static final enum c:LU2/f;

.field public static final synthetic d:[LU2/f;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LU2/f;

    const-string v1, "QUERY_SCOPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LU2/f;-><init>(Ljava/lang/String;II)V

    new-instance v1, LU2/f;

    const-string v2, "COLLECTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LU2/f;-><init>(Ljava/lang/String;II)V

    new-instance v2, LU2/f;

    const-string v3, "COLLECTION_GROUP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LU2/f;-><init>(Ljava/lang/String;II)V

    sput-object v2, LU2/f;->b:LU2/f;

    new-instance v3, LU2/f;

    const/4 v4, -0x1

    const-string v5, "UNRECOGNIZED"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, LU2/f;-><init>(Ljava/lang/String;II)V

    sput-object v3, LU2/f;->c:LU2/f;

    filled-new-array {v0, v1, v2, v3}, [LU2/f;

    move-result-object v0

    sput-object v0, LU2/f;->d:[LU2/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LU2/f;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LU2/f;
    .locals 1

    const-class v0, LU2/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LU2/f;

    return-object p0
.end method

.method public static values()[LU2/f;
    .locals 1

    sget-object v0, LU2/f;->d:[LU2/f;

    invoke-virtual {v0}, [LU2/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LU2/f;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, LU2/f;->c:LU2/f;

    if-eq p0, v0, :cond_0

    iget v0, p0, LU2/f;->a:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
