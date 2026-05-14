.class public final enum Lj3/n0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lj3/n0;

.field public static final enum b:Lj3/n0;

.field public static final synthetic c:[Lj3/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lj3/n0;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj3/n0;->a:Lj3/n0;

    new-instance v1, Lj3/n0;

    const-string v2, "INTEGRITY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lj3/n0;

    const-string v3, "PRIVACY_AND_INTEGRITY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lj3/n0;->b:Lj3/n0;

    filled-new-array {v0, v1, v2}, [Lj3/n0;

    move-result-object v0

    sput-object v0, Lj3/n0;->c:[Lj3/n0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj3/n0;
    .locals 1

    const-class v0, Lj3/n0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj3/n0;

    return-object p0
.end method

.method public static values()[Lj3/n0;
    .locals 1

    sget-object v0, Lj3/n0;->c:[Lj3/n0;

    invoke-virtual {v0}, [Lj3/n0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj3/n0;

    return-object v0
.end method
