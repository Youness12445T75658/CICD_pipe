Name:           ADEO_sys_till_first_rpm
Version:        1.0.0
Release:        1%{?dist}
Summary:        Installe un fichier TEST dans /tmp avec droits 0777 root:root
License:        Proprietary
BuildArch:      noarch
ExclusiveOS:    linux

# IMPORTANT : n'autoriser que RHEL/Rocky 9
%if 0%{?rhel} != 9
%{error:Ce paquet ne se construit que sur RHEL/Rocky 9 (rhel macro != 9).}
%endif

%description
Ce paquet crée le fichier /tmp/TEST avec les permissions 0777 et la propriété root:root.

%prep
# Pas de sources

%build
# Pas de compilation

%install
rm -rf %{buildroot}
mkdir -p %{buildroot}/tmp
# Créer le fichier TEST ; le contenu peut être vide ou un message.
echo "TEST file deployed by ADEO_sys_till_first_rpm" > %{buildroot}/tmp/TEST

# les permissions et propriétaire seront imposés à l'installation via la section %%files

%files
%attr(0777,root,root) /tmp/TEST

%changelog
* Fri Oct 17 2025 DevOps Team <dev@adeo> - 1.0.0-1
- Première version pour Rocky Linux 9, création de /tmp/TEST

