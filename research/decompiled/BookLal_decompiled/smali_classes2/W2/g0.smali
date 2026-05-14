.class public final enum LW2/g0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/S;


# static fields
.field public static final enum b:LW2/g0;

.field public static final enum c:LW2/g0;

.field public static final enum d:LW2/g0;

.field public static final enum e:LW2/g0;

.field public static final enum f:LW2/g0;

.field public static final enum l:LW2/g0;

.field public static final enum m:LW2/g0;

.field public static final enum n:LW2/g0;

.field public static final enum o:LW2/g0;

.field public static final enum p:LW2/g0;

.field public static final enum q:LW2/g0;

.field public static final enum r:LW2/g0;

.field public static final synthetic s:[LW2/g0;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, LW2/g0;

    const-string v1, "OPERATOR_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LW2/g0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LW2/g0;->b:LW2/g0;

    new-instance v1, LW2/g0;

    const-string v2, "LESS_THAN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LW2/g0;-><init>(Ljava/lang/String;II)V

    sput-object v1, LW2/g0;->c:LW2/g0;

    new-instance v2, LW2/g0;

    const-string v3, "LESS_THAN_OR_EQUAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LW2/g0;-><init>(Ljava/lang/String;II)V

    sput-object v2, LW2/g0;->d:LW2/g0;

    new-instance v3, LW2/g0;

    const-string v4, "GREATER_THAN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, LW2/g0;-><init>(Ljava/lang/String;II)V

    sput-object v3, LW2/g0;->e:LW2/g0;

    new-instance v4, LW2/g0;

    const-string v5, "GREATER_THAN_OR_EQUAL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, LW2/g0;-><init>(Ljava/lang/String;II)V

    sput-object v4, LW2/g0;->f:LW2/g0;

    new-instance v5, LW2/g0;

    const-string v6, "EQUAL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, LW2/g0;-><init>(Ljava/lang/String;II)V

    sput-object v5, LW2/g0;->l:LW2/g0;

    new-instance v6, LW2/g0;

    const-string v7, "NOT_EQUAL"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, LW2/g0;-><init>(Ljava/lang/String;II)V

    sput-object v6, LW2/g0;->m:LW2/g0;

    new-instance v7, LW2/g0;

    const-string v8, "ARRAY_CONTAINS"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, LW2/g0;-><init>(Ljava/lang/String;II)V

    sput-object v7, LW2/g0;->n:LW2/g0;

    new-instance v8, LW2/g0;

    const-string v9, "IN"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, LW2/g0;-><init>(Ljava/lang/String;II)V

    sput-object v8, LW2/g0;->o:LW2/g0;

    new-instance v9, LW2/g0;

    const-string v10, "ARRAY_CONTAINS_ANY"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, LW2/g0;-><init>(Ljava/lang/String;II)V

    sput-object v9, LW2/g0;->p:LW2/g0;

    new-instance v10, LW2/g0;

    const-string v11, "NOT_IN"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, LW2/g0;-><init>(Ljava/lang/String;II)V

    sput-object v10, LW2/g0;->q:LW2/g0;

    new-instance v11, LW2/g0;

    const/4 v12, -0x1

    const-string v13, "UNRECOGNIZED"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v12}, LW2/g0;-><init>(Ljava/lang/String;II)V

    sput-object v11, LW2/g0;->r:LW2/g0;

    filled-new-array/range {v0 .. v11}, [LW2/g0;

    move-result-object v0

    sput-object v0, LW2/g0;->s:[LW2/g0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LW2/g0;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LW2/g0;
    .locals 1

    const-class v0, LW2/g0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LW2/g0;

    return-object p0
.end method

.method public static values()[LW2/g0;
    .locals 1

    sget-object v0, LW2/g0;->s:[LW2/g0;

    invoke-virtual {v0}, [LW2/g0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LW2/g0;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, LW2/g0;->r:LW2/g0;

    if-eq p0, v0, :cond_0

    iget v0, p0, LW2/g0;->a:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
