.class public final enum Lc3/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic b:[Lc3/s;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lc3/s;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lc3/s;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lc3/s;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lc3/s;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lc3/s;

    const-string v3, "RIGHT"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lc3/s;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1, v2}, [Lc3/s;

    move-result-object v0

    sput-object v0, Lc3/s;->b:[Lc3/s;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lc3/s;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc3/s;
    .locals 1

    const-class v0, Lc3/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc3/s;

    return-object p0
.end method

.method public static values()[Lc3/s;
    .locals 1

    sget-object v0, Lc3/s;->b:[Lc3/s;

    invoke-virtual {v0}, [Lc3/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc3/s;

    return-object v0
.end method
