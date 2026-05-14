.class public final enum LH2/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LH2/f;

.field public static final enum b:LH2/f;

.field public static final enum c:LH2/f;

.field public static final synthetic d:[LH2/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LH2/f;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LH2/f;->a:LH2/f;

    new-instance v1, LH2/f;

    const-string v2, "NOT_REQUIRED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LH2/f;->b:LH2/f;

    new-instance v2, LH2/f;

    const-string v3, "REQUIRED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LH2/f;->c:LH2/f;

    filled-new-array {v0, v1, v2}, [LH2/f;

    move-result-object v0

    sput-object v0, LH2/f;->d:[LH2/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LH2/f;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-class v0, LH2/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LH2/f;

    return-object p0
.end method

.method public static values()[LH2/f;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    sget-object v0, LH2/f;->d:[LH2/f;

    invoke-virtual {v0}, [LH2/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LH2/f;

    return-object v0
.end method
