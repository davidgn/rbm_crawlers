.class public final LB2/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LB2/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LB2/z;->a:I

    packed-switch v0, :pswitch_data_0

    .line 18
    new-instance v0, Lz/f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lz/f;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 19
    :pswitch_0
    new-instance v0, Lu2/m;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lu2/m;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 20
    :pswitch_1
    new-instance v0, Lu2/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lu2/j;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 21
    :pswitch_2
    new-instance v0, Lu0/O;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lu0/O;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 22
    :pswitch_3
    new-instance v0, Ls2/r;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ls2/r;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 23
    :pswitch_4
    new-instance v0, Ls2/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ls2/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 24
    :pswitch_5
    new-instance v0, Lm2/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lm2/b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 25
    :pswitch_6
    new-instance v0, Ll2/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ll2/c;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 26
    :pswitch_7
    new-instance v0, Ll/d1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ll/d1;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 27
    :pswitch_8
    new-instance v0, Ll/R0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ll/R0;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 28
    :pswitch_9
    new-instance v0, Landroidx/fragment/app/A;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/fragment/app/A;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 29
    :pswitch_a
    new-instance v0, La0/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, La0/e;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_b
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 31
    sget-object p1, LV/b;->b:LV/a;

    return-object p1

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "superState must be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :pswitch_c
    new-instance v0, LI0/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LI0/j;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 34
    :pswitch_d
    new-instance v0, LB2/A;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LB2/A;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LB2/z;->a:I

    packed-switch v0, :pswitch_data_0

    .line 1
    new-instance v0, Lz/f;

    invoke-direct {v0, p1, p2}, Lz/f;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 2
    :pswitch_0
    new-instance v0, Lu2/m;

    invoke-direct {v0, p1, p2}, Lu2/m;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 3
    :pswitch_1
    new-instance v0, Lu2/j;

    invoke-direct {v0, p1, p2}, Lu2/j;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 4
    :pswitch_2
    new-instance v0, Lu0/O;

    invoke-direct {v0, p1, p2}, Lu0/O;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 5
    :pswitch_3
    new-instance v0, Ls2/r;

    invoke-direct {v0, p1, p2}, Ls2/r;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 6
    :pswitch_4
    new-instance v0, Ls2/a;

    invoke-direct {v0, p1, p2}, Ls2/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 7
    :pswitch_5
    new-instance v0, Lm2/b;

    invoke-direct {v0, p1, p2}, Lm2/b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 8
    :pswitch_6
    new-instance v0, Ll2/c;

    invoke-direct {v0, p1, p2}, Ll2/c;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 9
    :pswitch_7
    new-instance v0, Ll/d1;

    invoke-direct {v0, p1, p2}, Ll/d1;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 10
    :pswitch_8
    new-instance v0, Ll/R0;

    invoke-direct {v0, p1, p2}, Ll/R0;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 11
    :pswitch_9
    new-instance v0, Landroidx/fragment/app/A;

    invoke-direct {v0, p1, p2}, Landroidx/fragment/app/A;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 12
    :pswitch_a
    new-instance v0, La0/e;

    invoke-direct {v0, p1, p2}, La0/e;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 13
    :pswitch_b
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 14
    sget-object p1, LV/b;->b:LV/a;

    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "superState must be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :pswitch_c
    new-instance v0, LI0/j;

    invoke-direct {v0, p1, p2}, LI0/j;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 17
    :pswitch_d
    new-instance v0, LB2/A;

    invoke-direct {v0, p1, p2}, LB2/A;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, LB2/z;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lz/f;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Lu2/m;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Lu2/j;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Lu0/O;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Ls2/r;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Ls2/a;

    return-object p1

    :pswitch_5
    new-array p1, p1, [Lm2/b;

    return-object p1

    :pswitch_6
    new-array p1, p1, [Ll2/c;

    return-object p1

    :pswitch_7
    new-array p1, p1, [Ll/d1;

    return-object p1

    :pswitch_8
    new-array p1, p1, [Ll/R0;

    return-object p1

    :pswitch_9
    new-array p1, p1, [Landroidx/fragment/app/A;

    return-object p1

    :pswitch_a
    new-array p1, p1, [La0/e;

    return-object p1

    :pswitch_b
    new-array p1, p1, [LV/b;

    return-object p1

    :pswitch_c
    new-array p1, p1, [LI0/j;

    return-object p1

    :pswitch_d
    new-array p1, p1, [LB2/A;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
