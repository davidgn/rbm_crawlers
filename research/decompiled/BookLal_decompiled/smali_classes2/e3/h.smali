.class public final Le3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ2/g;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Le3/h;->a:I

    iput-object p1, p0, Le3/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Le3/h;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Le3/b;

    iget-object p1, p1, Le3/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Le3/h;->b:Ljava/lang/Object;

    check-cast v0, Le3/a;

    iget-object v0, v0, Le3/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Le3/b;

    iget-object p1, p1, Le3/b;->d:Le3/i;

    iget-object p1, p1, Le3/i;->a:Ljava/lang/String;

    iget-object v0, p0, Le3/h;->b:Ljava/lang/Object;

    check-cast v0, Le3/i;

    iget-object v0, v0, Le3/i;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
