.class public final enum LW2/x;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/S;


# static fields
.field public static final enum b:LW2/x;

.field public static final enum c:LW2/x;

.field public static final enum d:LW2/x;

.field public static final synthetic e:[LW2/x;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LW2/x;

    const-string v1, "SERVER_VALUE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LW2/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, LW2/x;->b:LW2/x;

    new-instance v1, LW2/x;

    const-string v2, "REQUEST_TIME"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LW2/x;-><init>(Ljava/lang/String;II)V

    sput-object v1, LW2/x;->c:LW2/x;

    new-instance v2, LW2/x;

    const/4 v3, -0x1

    const-string v4, "UNRECOGNIZED"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, LW2/x;-><init>(Ljava/lang/String;II)V

    sput-object v2, LW2/x;->d:LW2/x;

    filled-new-array {v0, v1, v2}, [LW2/x;

    move-result-object v0

    sput-object v0, LW2/x;->e:[LW2/x;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LW2/x;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LW2/x;
    .locals 1

    const-class v0, LW2/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LW2/x;

    return-object p0
.end method

.method public static values()[LW2/x;
    .locals 1

    sget-object v0, LW2/x;->e:[LW2/x;

    invoke-virtual {v0}, [LW2/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LW2/x;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, LW2/x;->d:LW2/x;

    if-eq p0, v0, :cond_0

    iget v0, p0, LW2/x;->a:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
