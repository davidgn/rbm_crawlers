.class public final enum LS3/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LS3/f;

.field public static final synthetic b:[LS3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LS3/f;

    const-string v1, "COMPLETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LS3/f;->a:LS3/f;

    filled-new-array {v0}, [LS3/f;

    move-result-object v0

    sput-object v0, LS3/f;->b:[LS3/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LS3/f;
    .locals 1

    const-class v0, LS3/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LS3/f;

    return-object p0
.end method

.method public static values()[LS3/f;
    .locals 1

    sget-object v0, LS3/f;->b:[LS3/f;

    invoke-virtual {v0}, [LS3/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LS3/f;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NotificationLite.Complete"

    return-object v0
.end method
