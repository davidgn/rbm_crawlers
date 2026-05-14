.class public final Lcom/google/android/gms/internal/ads/zzete;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfkc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcmo;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzesu;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfpm;

.field private zzf:Lcom/google/android/gms/internal/ads/zzcxn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcmo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzesu;Lcom/google/android/gms/internal/ads/zzfkc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzete;->zzb:Lcom/google/android/gms/internal/ads/zzcmo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzete;->zzc:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzete;->zzd:Lcom/google/android/gms/internal/ads/zzesu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzete;->zza:Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcmo;->zzx()Lcom/google/android/gms/internal/ads/zzfpm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzete;->zze:Lcom/google/android/gms/internal/ads/zzfpm;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzesu;->zzc()Lcom/google/android/gms/internal/ads/zzesh;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzfkc;->zzt(Lcom/google/android/gms/internal/ads/zzesh;)Lcom/google/android/gms/internal/ads/zzfkc;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzesv;Lcom/google/android/gms/internal/ads/zzesw;)Z
    .locals 9

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzdi:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzc()V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzete;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzK(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-nez v1, :cond_1

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Failed to load the ad because app ID is missing."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzete;->zzb:Lcom/google/android/gms/internal/ads/zzcmo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcmo;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzetd;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzetd;-><init>(Lcom/google/android/gms/internal/ads/zzete;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_1
    if-nez p2, :cond_2

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad unit ID should not be null for NativeAdLoader."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzete;->zzb:Lcom/google/android/gms/internal/ads/zzcmo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcmo;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzetc;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzetc;-><init>(Lcom/google/android/gms/internal/ads/zzete;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_2
    iget-boolean p2, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzfla;->zzb(Landroid/content/Context;Z)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzkm:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzete;->zzb:Lcom/google/android/gms/internal/ads/zzcmo;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcmo;->zzw()Lcom/google/android/gms/internal/ads/zzebw;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzebw;->zzc(Z)V

    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/ads/zzesy;

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzesy;->zza:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    new-instance p3, Landroid/util/Pair;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxz;->zza:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p3, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/util/Pair;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdxz;->zzb:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p3, v1}, [Landroid/util/Pair;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzdyb;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object p3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzete;->zza:Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfkc;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzfkc;->zzv(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzfkc;->zzl(I)Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfkc;->zzA()Lcom/google/android/gms/internal/ads/zzfkd;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfpi;->zzg(Lcom/google/android/gms/internal/ads/zzfkd;)I

    move-result p3

    const/16 v1, 0x8

    invoke-static {v0, p3, v1, p1}, Lcom/google/android/gms/internal/ads/zzfoz;->zzo(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfoz;

    move-result-object v7

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzfkd;->zzo:Lcom/google/android/gms/ads/internal/client/zzcl;

    if-eqz p3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzete;->zzd:Lcom/google/android/gms/internal/ads/zzesu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzesu;->zzc()Lcom/google/android/gms/internal/ads/zzesh;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/ads/zzesh;->zzo(Lcom/google/android/gms/ads/internal/client/zzcl;)V

    :cond_4
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzete;->zzb:Lcom/google/android/gms/internal/ads/zzcmo;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcmo;->zzo()Lcom/google/android/gms/internal/ads/zzdng;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdbf;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzdbf;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzdbf;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdbf;

    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzdbf;->zzb(Lcom/google/android/gms/internal/ads/zzfkd;)Lcom/google/android/gms/internal/ads/zzdbf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdbf;->zze()Lcom/google/android/gms/internal/ads/zzdbg;

    move-result-object p2

    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdng;->zzf(Lcom/google/android/gms/internal/ads/zzdbg;)Lcom/google/android/gms/internal/ads/zzdng;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdhv;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzete;->zzd:Lcom/google/android/gms/internal/ads/zzesu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesu;->zzc()Lcom/google/android/gms/internal/ads/zzesh;

    move-result-object v4

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcmo;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzdhv;->zze(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdhv;->zzn()Lcom/google/android/gms/internal/ads/zzdhw;

    move-result-object p2

    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdng;->zzg(Lcom/google/android/gms/internal/ads/zzdhw;)Lcom/google/android/gms/internal/ads/zzdng;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesu;->zzb()Lcom/google/android/gms/internal/ads/zzdnc;

    move-result-object p2

    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdng;->zze(Lcom/google/android/gms/internal/ads/zzdnc;)Lcom/google/android/gms/internal/ads/zzdng;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcun;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzcun;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdng;->zzd(Lcom/google/android/gms/internal/ads/zzcun;)Lcom/google/android/gms/internal/ads/zzdng;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdng;->zza()Lcom/google/android/gms/internal/ads/zzdnh;

    move-result-object v8

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjo;->zzc:Lcom/google/android/gms/internal/ads/zzbjf;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbjf;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdnh;->zzc()Lcom/google/android/gms/internal/ads/zzfpj;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzfpj;->zzi(I)Lcom/google/android/gms/internal/ads/zzfpj;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfpj;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfpj;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfpj;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfpj;

    move-object v6, p2

    goto :goto_0

    :cond_5
    move-object v6, v0

    :goto_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcmo;->zzv()Lcom/google/android/gms/internal/ads/zzflc;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzflc;->zza(I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcxn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnf;->zzc()Lcom/google/android/gms/internal/ads/zzhbf;

    move-result-object p2

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcmo;->zzc()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdnh;->zza()Lcom/google/android/gms/internal/ads/zzcyc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcyc;->zzb()LN2/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcyc;->zzc(LN2/o;)LN2/o;

    move-result-object v0

    invoke-direct {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzcxn;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;LN2/o;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzete;->zzf:Lcom/google/android/gms/internal/ads/zzcxn;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzetb;

    move-object v3, p2

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzetb;-><init>(Lcom/google/android/gms/internal/ads/zzete;Lcom/google/android/gms/internal/ads/zzesw;Lcom/google/android/gms/internal/ads/zzfpj;Lcom/google/android/gms/internal/ads/zzfoz;Lcom/google/android/gms/internal/ads/zzdnh;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcxn;->zza(Lcom/google/android/gms/internal/ads/zzhas;)V

    return v2
.end method

.method public final zzb()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzete;->zzf:Lcom/google/android/gms/internal/ads/zzcxn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxn;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic zzc()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzete;->zzd:Lcom/google/android/gms/internal/ads/zzesu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesu;->zze()Lcom/google/android/gms/internal/ads/zzdbz;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzflf;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdbz;->zzdJ(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public final synthetic zzd()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzete;->zzd:Lcom/google/android/gms/internal/ads/zzesu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesu;->zze()Lcom/google/android/gms/internal/ads/zzdbz;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzflf;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdbz;->zzdJ(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public final synthetic zze()Lcom/google/android/gms/internal/ads/zzcmo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzete;->zzb:Lcom/google/android/gms/internal/ads/zzcmo;

    return-object v0
.end method

.method public final synthetic zzf()Lcom/google/android/gms/internal/ads/zzesu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzete;->zzd:Lcom/google/android/gms/internal/ads/zzesu;

    return-object v0
.end method

.method public final synthetic zzg()Lcom/google/android/gms/internal/ads/zzfpm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzete;->zze:Lcom/google/android/gms/internal/ads/zzfpm;

    return-object v0
.end method
