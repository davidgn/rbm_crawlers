.class final Lcom/google/android/gms/internal/ads/zzgkq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgkf;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfya;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgma;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgnx;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgph;

.field private final zze:Ljava/util/concurrent/ExecutorService;

.field private final zzf:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfya;Lcom/google/android/gms/internal/ads/zzgma;Lcom/google/android/gms/internal/ads/zzgnx;Lcom/google/android/gms/internal/ads/zzgph;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "2.856415045.-1"

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zza:Lcom/google/android/gms/internal/ads/zzfya;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zzb:Lcom/google/android/gms/internal/ads/zzgma;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zzc:Lcom/google/android/gms/internal/ads/zzgnx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zzd:Lcom/google/android/gms/internal/ads/zzgph;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zze:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()LN2/o;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zzb:Lcom/google/android/gms/internal/ads/zzgma;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzglz;->zzb()LN2/o;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhan;->zzw(LN2/o;)Lcom/google/android/gms/internal/ads/zzhan;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgkp;->zza:Lcom/google/android/gms/internal/ads/zzgkp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    const-class v3, Ljava/lang/Throwable;

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzg(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgkh;-><init>(Lcom/google/android/gms/internal/ads/zzgkq;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzk(LN2/o;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgki;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgki;-><init>(Lcom/google/android/gms/internal/ads/zzgkq;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgkj;-><init>(Lcom/google/android/gms/internal/ads/zzgkq;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzk(LN2/o;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgkk;->zza:Lcom/google/android/gms/internal/ads/zzgkk;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzk(LN2/o;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    return-object v0
.end method

.method public final zzc(Landroid/content/Context;)LN2/o;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgkl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgkl;-><init>(Lcom/google/android/gms/internal/ads/zzgkq;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zze:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)LN2/o;
    .locals 6

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgkm;

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgkm;-><init>(Lcom/google/android/gms/internal/ads/zzgkq;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zze:Ljava/util/concurrent/ExecutorService;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)LN2/o;
    .locals 6

    new-instance p4, Lcom/google/android/gms/internal/ads/zzgkn;

    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgkn;-><init>(Lcom/google/android/gms/internal/ads/zzgkq;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zze:Ljava/util/concurrent/ExecutorService;

    invoke-static {p4, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Landroid/view/InputEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zza:Lcom/google/android/gms/internal/ads/zzfya;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfya;->zzb()Lcom/google/android/gms/internal/ads/zzfwk;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zzd:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v0, 0x3a9c

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zzb(I)V

    return-void

    :cond_0
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-nez v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    check-cast p1, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfwk;->zzd(Ljava/lang/String;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfxz; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zzd:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v1, 0x3a9d

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgph;->zzd(ILjava/lang/Throwable;)V

    return-void
.end method

.method public final zzg()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final synthetic zzh(Lcom/google/android/gms/internal/ads/zzgeu;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zzc:Lcom/google/android/gms/internal/ads/zzgnx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgnx;->zzb(Lcom/google/android/gms/internal/ads/zzgeu;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zzd:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v0, 0x3a9b

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zzb(I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgkg;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzgkg;-><init>(I)V

    throw p1
.end method

.method public final synthetic zzi(Ljava/lang/Boolean;)LN2/o;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zzb:Lcom/google/android/gms/internal/ads/zzgma;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgma;->zze()LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzj(Lcom/google/android/gms/internal/ads/zzfxq;)Z
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxq;->zzb()Ljava/io/File;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->setReadOnly()Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zzd:Lcom/google/android/gms/internal/ads/zzgph;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgko;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzgko;-><init>(Lcom/google/android/gms/internal/ads/zzgkq;Lcom/google/android/gms/internal/ads/zzfxq;)V

    const/16 p1, 0x3a9a

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgph;->zzf(ILjava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgkg;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgkg;-><init>(I)V

    throw p1
.end method

.method public final synthetic zzk(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zza:Lcom/google/android/gms/internal/ads/zzfya;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfya;->zzb()Lcom/google/android/gms/internal/ads/zzfwk;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zzd:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v0, 0x3a9c

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zzb(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzfwk;->zza(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v1, p1

    :goto_0
    return-object v1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zzd:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v0, 0x3a9e

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zzb(I)V

    return-object v1
.end method

.method public final synthetic zzl(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zza:Lcom/google/android/gms/internal/ads/zzfya;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfya;->zzb()Lcom/google/android/gms/internal/ads/zzfwk;

    move-result-object p2

    const-string v0, ""

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zzd:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 p2, 0x3a9c

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgph;->zzb(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, p3, p4}, Lcom/google/android/gms/internal/ads/zzfwk;->zzb(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zzd:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 p2, 0x3a9f

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgph;->zzb(I)V

    return-object v0
.end method

.method public final synthetic zzm(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 6

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zza:Lcom/google/android/gms/internal/ads/zzfya;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzfya;->zzb()Lcom/google/android/gms/internal/ads/zzfwk;

    move-result-object v0

    const-string p4, ""

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zzd:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 p2, 0x3a9c

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgph;->zzb(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfwk;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object p4, p1

    :goto_0
    return-object p4

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zzd:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 p2, 0x3aa0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgph;->zzb(I)V

    return-object p4
.end method

.method public final synthetic zzn(Lcom/google/android/gms/internal/ads/zzfxq;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zza:Lcom/google/android/gms/internal/ads/zzfya;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfya;->zza(Lcom/google/android/gms/internal/ads/zzfxq;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkq;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxq;->zza()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdg;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "2.856415045."

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgkg;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgkg;-><init>(I)V

    throw p1
.end method
