.class public final enum LR1/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LR1/r;

.field public static final synthetic b:[LR1/r;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LR1/r;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, LR1/r;

    const-string v2, "ANDROID_FIREBASE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LR1/r;->a:LR1/r;

    filled-new-array {v0, v1}, [LR1/r;

    move-result-object v0

    sput-object v0, LR1/r;->b:[LR1/r;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LR1/r;
    .locals 1

    const-class v0, LR1/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LR1/r;

    return-object p0
.end method

.method public static values()[LR1/r;
    .locals 1

    sget-object v0, LR1/r;->b:[LR1/r;

    invoke-virtual {v0}, [LR1/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LR1/r;

    return-object v0
.end method
