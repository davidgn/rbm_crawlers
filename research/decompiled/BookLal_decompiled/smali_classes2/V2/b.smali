.class public final enum LV2/b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/S;


# static fields
.field public static final enum b:LV2/b;

.field public static final enum c:LV2/b;

.field public static final enum d:LV2/b;

.field public static final synthetic e:[LV2/b;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LV2/b;

    const-string v1, "FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LV2/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, LV2/b;->b:LV2/b;

    new-instance v1, LV2/b;

    const-string v2, "LAST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LV2/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, LV2/b;->c:LV2/b;

    new-instance v2, LV2/b;

    const/4 v3, -0x1

    const-string v4, "UNRECOGNIZED"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, LV2/b;-><init>(Ljava/lang/String;II)V

    sput-object v2, LV2/b;->d:LV2/b;

    filled-new-array {v0, v1, v2}, [LV2/b;

    move-result-object v0

    sput-object v0, LV2/b;->e:[LV2/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LV2/b;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LV2/b;
    .locals 1

    const-class v0, LV2/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LV2/b;

    return-object p0
.end method

.method public static values()[LV2/b;
    .locals 1

    sget-object v0, LV2/b;->e:[LV2/b;

    invoke-virtual {v0}, [LV2/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LV2/b;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, LV2/b;->d:LV2/b;

    if-eq p0, v0, :cond_0

    iget v0, p0, LV2/b;->a:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
