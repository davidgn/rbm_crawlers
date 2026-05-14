.class public final Lt4/q;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lk4/l;


# static fields
.field public static final a:Lt4/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt4/q;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/j;-><init>(I)V

    sput-object v0, Lt4/q;->a:Lt4/q;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lb4/f;

    instance-of v0, p1, Lt4/s;

    if-eqz v0, :cond_0

    check-cast p1, Lt4/s;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
