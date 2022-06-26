  let dateDropdown = document.getElementById('batchYear');
    let currentYear = new Date().getFullYear()+3;
    let earliestYear = 2010;
    while (currentYear >= earliestYear) {
      let dateOption = document.createElement('option');
      dateOption.text = currentYear;
      dateOption.value = currentYear;
      dateDropdown.add(dateOption);
      currentYear -= 1;
    }
