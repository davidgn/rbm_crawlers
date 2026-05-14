.class public final enum LW2/J0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LW2/J0;

.field public static final enum b:LW2/J0;

.field public static final enum c:LW2/J0;

.field public static final enum d:LW2/J0;

.field public static final enum e:LW2/J0;

.field public static final synthetic f:[LW2/J0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LW2/J0;

    const-string v1, "UPDATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LW2/J0;->a:LW2/J0;

    new-instance v1, LW2/J0;

    const-string v2, "DELETE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LW2/J0;->b:LW2/J0;

    new-instance v2, LW2/J0;

    const-string v3, "VERIFY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LW2/J0;->c:LW2/J0;

    new-instance v3, LW2/J0;

    const-string v4, "TRANSFORM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LW2/J0;->d:LW2/J0;

    new-instance v4, LW2/J0;

    const-string v5, "OPERATION_NOT_SET"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LW2/J0;->e:LW2/J0;

    filled-new-array {v0, v1, v2, v3, v4}, [LW2/J0;

    move-result-object v0

    sput-object v0, LW2/J0;->f:[LW2/J0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LW2/J0;
    .locals 1

    const-class v0, LW2/J0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LW2/J0;

    return-object p0
.end method

.method public static values()[LW2/J0;
    .locals 1

    sget-object v0, LW2/J0;->f:[LW2/J0;

    invoke-virtual {v0}, [LW2/J0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LW2/J0;

    return-object v0
.end method
