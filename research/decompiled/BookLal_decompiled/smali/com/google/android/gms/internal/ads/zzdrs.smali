.class public final Lcom/google/android/gms/internal/ads/zzdrs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhbf;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdsh;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdsm;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdyl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhbf;Lcom/google/android/gms/internal/ads/zzdsh;Lcom/google/android/gms/internal/ads/zzdsm;Lcom/google/android/gms/internal/ads/zzdyl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrs;->zza:Lcom/google/android/gms/internal/ads/zzhbf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrs;->zzb:Lcom/google/android/gms/internal/ads/zzdsh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdrs;->zzc:Lcom/google/android/gms/internal/ads/zzdsm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdrs;->zzd:Lcom/google/android/gms/internal/ads/zzdyl;

    return-void
.end method

.method private final zze(LN2/o;Lcom/google/android/gms/internal/ads/zzdxz;)LN2/o;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzcU:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrp;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzdrp;-><init>(Lcom/google/android/gms/internal/ads/zzdrs;Lcom/google/android/gms/internal/ads/zzdxz;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrs;->zza:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzhav;->zzr(LN2/o;Lcom/google/android/gms/internal/ads/zzhas;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-object p1
.end method

.method private static final zzf(Lorg/json/JSONObject;)Z
    .locals 1

    const-string v0, "template_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzccs;)LN2/o;
    .locals 17

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzcP:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzdrs;->zzd:Lcom/google/android/gms/internal/ads/zzdyl;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdxz;->zzz:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/a;->m(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdyl;)V

    :cond_0
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzdrs;->zza:Lcom/google/android/gms/internal/ads/zzhbf;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdrr;

    move-object/from16 v8, p2

    invoke-direct {v2, v13, v0, v8, v7}, Lcom/google/android/gms/internal/ads/zzdrr;-><init>(Lcom/google/android/gms/internal/ads/zzdrs;Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzhbf;->zzc(Ljava/util/concurrent/Callable;)LN2/o;

    move-result-object v9

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxz;->zzT:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-direct {v13, v9, v1}, Lcom/google/android/gms/internal/ads/zzdrs;->zze(LN2/o;Lcom/google/android/gms/internal/ads/zzdxz;)LN2/o;

    iget-object v10, v13, Lcom/google/android/gms/internal/ads/zzdrs;->zzb:Lcom/google/android/gms/internal/ads/zzdsh;

    const-string v1, "images"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdxz;->zzU:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v10, v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsh;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdxz;)LN2/o;

    move-result-object v11

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxz;->zzV:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-direct {v13, v11, v1}, Lcom/google/android/gms/internal/ads/zzdrs;->zze(LN2/o;Lcom/google/android/gms/internal/ads/zzdxz;)LN2/o;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjv;->zzb:Lcom/google/android/gms/internal/ads/zzfju;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzfju;->zzb:Lcom/google/android/gms/internal/ads/zzfjn;

    const-string v2, "images"

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v3, p2

    move-object v4, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdsh;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzccs;)LN2/o;

    move-result-object v14

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxz;->zzX:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-direct {v13, v14, v0}, Lcom/google/android/gms/internal/ads/zzdrs;->zze(LN2/o;Lcom/google/android/gms/internal/ads/zzdxz;)LN2/o;

    const-string v0, "secondary_image"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxz;->zzY:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v10, v7, v0, v1}, Lcom/google/android/gms/internal/ads/zzdsh;->zza(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdxz;)LN2/o;

    move-result-object v6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxz;->zzZ:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-direct {v13, v6, v0}, Lcom/google/android/gms/internal/ads/zzdrs;->zze(LN2/o;Lcom/google/android/gms/internal/ads/zzdxz;)LN2/o;

    const-string v0, "app_icon"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxz;->zzaa:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v10, v7, v0, v1}, Lcom/google/android/gms/internal/ads/zzdsh;->zza(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdxz;)LN2/o;

    move-result-object v15

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxz;->zzab:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-direct {v13, v15, v0}, Lcom/google/android/gms/internal/ads/zzdrs;->zze(LN2/o;Lcom/google/android/gms/internal/ads/zzdxz;)LN2/o;

    const-string v0, "attribution"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxz;->zzac:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v10, v7, v0, v1}, Lcom/google/android/gms/internal/ads/zzdsh;->zzd(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdxz;)LN2/o;

    move-result-object v5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxz;->zzad:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-direct {v13, v5, v0}, Lcom/google/android/gms/internal/ads/zzdrs;->zze(LN2/o;Lcom/google/android/gms/internal/ads/zzdxz;)LN2/o;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object v3, v12

    move-object/from16 v4, p4

    move-object v8, v5

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdsh;->zzg(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzccs;)LN2/o;

    move-result-object v10

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxz;->zzaf:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-direct {v13, v10, v0}, Lcom/google/android/gms/internal/ads/zzdrs;->zze(LN2/o;Lcom/google/android/gms/internal/ads/zzdxz;)LN2/o;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzov:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "video"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "flags"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "key"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "afma_video_player_type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    const-string v0, "value"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzdrs;->zzb:Lcom/google/android/gms/internal/ads/zzdsh;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzdsh;->zzf(LN2/o;)LN2/o;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxz;->zzai:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-direct {v13, v0, v1}, Lcom/google/android/gms/internal/ads/zzdrs;->zze(LN2/o;Lcom/google/android/gms/internal/ads/zzdxz;)LN2/o;

    :goto_1
    move-object v12, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object v0

    goto :goto_1

    :goto_3
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzdrs;->zzc:Lcom/google/android/gms/internal/ads/zzdsm;

    const-string v1, "custom_assets"

    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/internal/ads/zzdsm;->zza(Lorg/json/JSONObject;Ljava/lang/String;)LN2/o;

    move-result-object v5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxz;->zzak:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-direct {v13, v5, v0}, Lcom/google/android/gms/internal/ads/zzdrs;->zze(LN2/o;Lcom/google/android/gms/internal/ads/zzdxz;)LN2/o;

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzdrs;->zzb:Lcom/google/android/gms/internal/ads/zzdsh;

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsh;->zze(Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzccs;)LN2/o;

    move-result-object v4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxz;->zzam:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-direct {v13, v4, v0}, Lcom/google/android/gms/internal/ads/zzdrs;->zze(LN2/o;Lcom/google/android/gms/internal/ads/zzdxz;)LN2/o;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzgr:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzdrs;->zzf(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhav;->zzn(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzhau;

    move-result-object v3

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdrq;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object/from16 v16, v2

    move-object v2, v9

    move-object v9, v3

    move-object v3, v11

    move-object v11, v4

    move-object v4, v15

    move-object v15, v5

    move-object v5, v6

    move-object v6, v8

    move-object/from16 v7, p3

    move-object v8, v10

    move-object v10, v9

    move-object v9, v12

    move-object v12, v10

    move-object v10, v14

    move-object v14, v12

    move-object v12, v15

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/zzdrq;-><init>(Lcom/google/android/gms/internal/ads/zzdrs;LN2/o;LN2/o;LN2/o;LN2/o;LN2/o;Lorg/json/JSONObject;LN2/o;LN2/o;LN2/o;LN2/o;LN2/o;)V

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzdrs;->zza:Lcom/google/android/gms/internal/ads/zzhbf;

    move-object/from16 v1, v16

    invoke-virtual {v14, v1, v0}, Lcom/google/android/gms/internal/ads/zzhau;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdoy;
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzcU:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrs;->zzd:Lcom/google/android/gms/internal/ads/zzdyl;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxz;->zzS:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/a;->m(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdyl;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdoy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdoy;-><init>()V

    const-string v1, "template_id"

    const/4 v2, -0x1

    invoke-virtual {p3, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoy;->zza(I)V

    const-string v1, "custom_template_id"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoy;->zzl(Ljava/lang/String;)V

    const-string v1, "omid_settings"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "omid_partner_name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoy;->zzv(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjv;->zza:Lcom/google/android/gms/internal/ads/zzfjs;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjs;->zza:Lcom/google/android/gms/internal/ads/zzfkd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzx()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfkd;->zzh:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzx()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzS()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfkd;->zzi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeom;

    const-string p2, "Unexpected custom template id in the response."

    invoke-direct {p1, v3, p2}, Lcom/google/android/gms/internal/ads/zzeom;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeom;

    const-string p2, "No custom template id for custom template ad response."

    invoke-direct {p1, v3, p2}, Lcom/google/android/gms/internal/ads/zzeom;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const-string p1, "rating"

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-virtual {p3, p1, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzdoy;->zzi(D)V

    const-string p1, "headline"

    invoke-virtual {p3, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzfjk;->zzM:Z

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzs;->zzB()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/google/android/gms/ads/internal/util/client/a;->d(ILjava/lang/String;)I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, " : "

    invoke-static {v5, p2, v3, v1}, LC/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdoy;->zzs(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "body"

    invoke-virtual {p3, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzs(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "call_to_action"

    invoke-virtual {p3, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzs(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "store"

    invoke-virtual {p3, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzs(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "price"

    invoke-virtual {p3, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzs(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "advertiser"

    invoke-virtual {p3, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzs(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeom;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzx()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x15

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Invalid template ID: "

    invoke-static {p2, p3, v0}, LC/a;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v3, p2}, Lcom/google/android/gms/internal/ads/zzeom;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public final synthetic zzc(LN2/o;LN2/o;LN2/o;LN2/o;LN2/o;Lorg/json/JSONObject;LN2/o;LN2/o;LN2/o;LN2/o;LN2/o;)Lcom/google/android/gms/internal/ads/zzdoy;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzcP:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrs;->zzd:Lcom/google/android/gms/internal/ads/zzdyl;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxz;->zzA:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/a;->m(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdyl;)V

    :cond_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdoy;

    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzd(Ljava/util/List;)V

    invoke-interface {p3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzblj;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzj(Lcom/google/android/gms/internal/ads/zzblj;)V

    invoke-interface {p4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzblj;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzk(Lcom/google/android/gms/internal/ads/zzblj;)V

    invoke-interface {p5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzblc;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzc(Lcom/google/android/gms/internal/ads/zzblc;)V

    invoke-static {p6}, Lcom/google/android/gms/internal/ads/zzdsh;->zzl(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdoy;->zze(Ljava/util/List;)V

    invoke-static {p6}, Lcom/google/android/gms/internal/ads/zzdsh;->zzk(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/client/zzew;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzf(Lcom/google/android/gms/ads/internal/client/zzew;)V

    invoke-interface {p7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcjz;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzm(Lcom/google/android/gms/internal/ads/zzcjz;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcjz;->zzE()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdoy;->zzg(Landroid/view/View;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcjz;->zzh()Lcom/google/android/gms/internal/ads/zzclf;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzb(Lcom/google/android/gms/ads/internal/client/zzea;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoy;->zzH()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-interface {p9}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcjz;

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzn(Lcom/google/android/gms/internal/ads/zzcjz;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcjz;->zzE()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzh(Landroid/view/View;)V

    :cond_2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbhv;->zzgr:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p6}, Lcom/google/android/gms/internal/ads/zzdrs;->zzf(Lorg/json/JSONObject;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1, p10}, Lcom/google/android/gms/internal/ads/zzdoy;->zzp(LN2/o;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcfb;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzcfb;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzr(Lcom/google/android/gms/internal/ads/zzcfb;)V

    goto :goto_0

    :cond_3
    invoke-interface {p10}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcjz;

    if-eqz p2, :cond_4

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzo(Lcom/google/android/gms/internal/ads/zzcjz;)V

    :cond_4
    :goto_0
    invoke-interface {p11}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzdsj;

    iget p4, p3, Lcom/google/android/gms/internal/ads/zzdsj;->zza:I

    const/4 p5, 0x1

    if-eq p4, p5, :cond_5

    iget-object p4, p3, Lcom/google/android/gms/internal/ads/zzdsj;->zzb:Ljava/lang/String;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzdsj;->zzd:Lcom/google/android/gms/internal/ads/zzbku;

    invoke-virtual {p1, p4, p3}, Lcom/google/android/gms/internal/ads/zzdoy;->zzt(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbku;)V

    goto :goto_1

    :cond_5
    iget-object p4, p3, Lcom/google/android/gms/internal/ads/zzdsj;->zzb:Ljava/lang/String;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzdsj;->zzc:Ljava/lang/String;

    invoke-virtual {p1, p4, p3}, Lcom/google/android/gms/internal/ads/zzdoy;->zzs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    return-object p1
.end method

.method public final synthetic zzd()Lcom/google/android/gms/internal/ads/zzdyl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrs;->zzd:Lcom/google/android/gms/internal/ads/zzdyl;

    return-object v0
.end method
