.class public final Landroidx/lifecycle/L;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lk4/l;


# static fields
.field public static final a:Landroidx/lifecycle/L;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/L;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/j;-><init>(I)V

    sput-object v0, Landroidx/lifecycle/L;->a:Landroidx/lifecycle/L;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Li0/b;

    const-string v0, "$this$initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/lifecycle/O;

    invoke-direct {p1}, Landroidx/lifecycle/O;-><init>()V

    return-object p1
.end method
