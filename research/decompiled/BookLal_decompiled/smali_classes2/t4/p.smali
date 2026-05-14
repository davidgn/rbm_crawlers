.class public final Lt4/p;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final b:Lt4/p;

.field public static final c:Lt4/p;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lt4/p;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lt4/p;-><init>(II)V

    sput-object v0, Lt4/p;->b:Lt4/p;

    new-instance v0, Lt4/p;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lt4/p;-><init>(II)V

    sput-object v0, Lt4/p;->c:Lt4/p;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lt4/p;->a:I

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lt4/p;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lb4/h;

    check-cast p2, Lb4/f;

    invoke-interface {p1, p2}, Lb4/h;->n(Lb4/h;)Lb4/h;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Lb4/f;

    return-object p1

    :pswitch_1
    check-cast p1, Lb4/h;

    check-cast p2, Lb4/f;

    invoke-interface {p1, p2}, Lb4/h;->n(Lb4/h;)Lb4/h;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
