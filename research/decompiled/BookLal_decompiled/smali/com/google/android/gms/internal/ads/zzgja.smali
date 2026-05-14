.class final Lcom/google/android/gms/internal/ads/zzgja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgev;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzilo;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzilo;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzilo;

.field private final zzd:Z

.field private final zze:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzilo;Lcom/google/android/gms/internal/ads/zzilo;Lcom/google/android/gms/internal/ads/zzilo;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgja;->zza:Lcom/google/android/gms/internal/ads/zzilo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgja;->zzb:Lcom/google/android/gms/internal/ads/zzilo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgja;->zzc:Lcom/google/android/gms/internal/ads/zzilo;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzgja;->zzd:Z

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzgja;->zze:J

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgja;->zzb:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgkf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgkf;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()LN2/o;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgja;->zzd:Z

    const-class v1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgja;->zza:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgjs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjs;->zzb()LN2/o;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhan;->zzw(LN2/o;)Lcom/google/android/gms/internal/ads/zzhan;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgiw;->zza:Lcom/google/android/gms/internal/ads/zzgiw;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhav;->zzg(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgix;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgix;-><init>(Lcom/google/android/gms/internal/ads/zzgja;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgiy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgiy;-><init>(Lcom/google/android/gms/internal/ads/zzgja;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgja;->zzc:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzglz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzglz;->zza()LN2/o;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhan;->zzw(LN2/o;)Lcom/google/android/gms/internal/ads/zzhan;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgiz;->zza:Lcom/google/android/gms/internal/ads/zzgiz;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhav;->zzg(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgiu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgiu;-><init>(Lcom/google/android/gms/internal/ads/zzgja;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgiv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgiv;-><init>(Lcom/google/android/gms/internal/ads/zzgja;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v0, v1, v2}, LN2/o;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final zzc(Landroid/content/Context;)LN2/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgja;->zzb:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgkf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgkf;->zzc(Landroid/content/Context;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)LN2/o;
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgja;->zzb:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgkf;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzgkf;->zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)LN2/o;
    .locals 1

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgja;->zzb:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzgkf;

    const/4 v0, 0x0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzgkf;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Landroid/view/InputEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgja;->zzb:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgkf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgkf;->zzf(Landroid/view/InputEvent;)V

    return-void
.end method

.method public final zzg()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgja;->zzb:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgkf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgkf;->zzg()I

    move-result v0

    return v0
.end method

.method public final synthetic zzh(Ljava/lang/Boolean;)LN2/o;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgja;->zzb:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgkf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgkf;->zzb()LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzi()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgja;->zza:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgjs;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgja;->zze:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgjs;->zza(J)V

    return-void
.end method

.method public final synthetic zzj(Lcom/google/android/gms/internal/ads/zzgjr;)LN2/o;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgja;->zzc:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzglz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzglz;->zza()LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzk(Ljava/lang/Boolean;)LN2/o;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgja;->zzb:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgkf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgkf;->zzb()LN2/o;

    move-result-object p1

    return-object p1
.end method
