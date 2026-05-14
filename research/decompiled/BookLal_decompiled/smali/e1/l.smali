.class public final Le1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Le1/l;

.field public static final c:Le1/l;

.field public static final d:Le1/l;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le1/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le1/l;-><init>(I)V

    sput-object v0, Le1/l;->b:Le1/l;

    new-instance v0, Le1/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le1/l;-><init>(I)V

    sput-object v0, Le1/l;->c:Le1/l;

    new-instance v0, Le1/l;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Le1/l;-><init>(I)V

    sput-object v0, Le1/l;->d:Le1/l;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Le1/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb1/a;)Z
    .locals 1

    iget v0, p0, Le1/l;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lb1/a;->b:Lb1/a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_0
    sget-object v0, Lb1/a;->c:Lb1/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lb1/a;->e:Lb1/a;

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1

    :pswitch_1
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
