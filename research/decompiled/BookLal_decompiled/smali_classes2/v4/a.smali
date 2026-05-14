.class public final enum Lv4/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic a:[Lv4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lv4/a;

    const-string v1, "SUSPEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lv4/a;

    const-string v2, "DROP_OLDEST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lv4/a;

    const-string v3, "DROP_LATEST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2}, [Lv4/a;

    move-result-object v0

    sput-object v0, Lv4/a;->a:[Lv4/a;

    invoke-static {v0}, LS4/b;->m([Ljava/lang/Enum;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv4/a;
    .locals 1

    const-class v0, Lv4/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv4/a;

    return-object p0
.end method

.method public static values()[Lv4/a;
    .locals 1

    sget-object v0, Lv4/a;->a:[Lv4/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv4/a;

    return-object v0
.end method
