.class public final LO1/a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lk4/l;


# static fields
.field public static final a:LO1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LO1/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/j;-><init>(I)V

    sput-object v0, LO1/a;->a:LO1/a;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    const/4 p1, 0x0

    return-object p1
.end method
